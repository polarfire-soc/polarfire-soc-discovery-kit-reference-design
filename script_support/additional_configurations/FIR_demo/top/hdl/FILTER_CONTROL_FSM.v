//FILTER_CONTROL_FSM.V
//-------------------------------------------------------------------                                                                
// 2021 Microchip Technology Inc. and its subsidiaries									
// All rights reserved.										
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN								
// ACCORDANCE WITH THE MICROCHIP LICENSE AGREEMENT AND MUST BE APPROVED								
// IN ADVANCE IN WRITING.
//
//-------------------------------------------------------------------
// Title       : FILTERCONTROL_FSM
// Created     : April-2017
// Description : Controls the FIR filter and the FFT operations. 
//               It loads the filtered data to the corresponding output buffer and moves the FFT output data to the corresponding output data buffer.
// Revision    : 1.0 Initial Release
// Hierarchy   :
//               PF_DSP_FLOW_TOP
//                --PF_CCC_0
//                --COREUART_0                      
//                -- PF_DSP_FLOW_DEMO_TOP
//                   -- COREFFT_0 
//                   -- FIR_CORE_0
//                   -- UART_IF    
//                   -- FILTERCONTROL_FSM_0    <-- This module 
//                   -- PF_COEF_BUF              
//                   -- PF_FFT_IM_BUF              
//                   -- PF_FFT_RE_BUF              
//                   -- PF_FIR_IN_BUF              
//                   -- PF_FIR_OUT_BUF    
// Target device: <Family:PolarFire> <Die:MPF300TS_ES> <Pkg:FCG1152>                                      
//-------------------------------------------------------------------

`timescale 1 ns/100 ps
module FILTERCONTROL_FSM(
  CLK,
  RESET_N,
  FILTER_COMPLETE, 
  FFT_START,
  FIR_WR_ENABLE,
  FIR_WR_ADDR,
  FFT_WADDR,
  SEL,
  COEF_RADDR,
  COEF_RD_ENABLE,
  COEF_I_VALID,
  DATA_I_VALID,
  FFT_I_VALID,
  COEF_ON, 
  FFT_WR_ENABLE
  );

//Input signals
//Clock and Reset
input CLK, RESET_N;
input FFT_START;
input SEL;
//Output signals
//Filter operation complete
output FILTER_COMPLETE; 
//Writing into FIR buffers
output FIR_WR_ENABLE;
//FFT write address
output [7:0]   FFT_WADDR;
//FIR write address
output [9:0]   FIR_WR_ADDR;
//Coefficient read address
output [6:0]   COEF_RADDR;
//Asserting coefficient on 
output COEF_ON;
//Reading the coefficients
output COEF_RD_ENABLE;
//Coefficient Valid to FIR
output reg COEF_I_VALID;
//Data Valid signal to FIR 
output reg DATA_I_VALID;
//FFT DATA INPUT VALID
output reg FFT_I_VALID;
output reg FFT_WR_ENABLE;  // modification
reg  FILTER_COMPLETE;
reg  FIR_WR_ENABLE;
reg [7:0]   FFT_WADDR;
//Data buffer address
reg [9:0]   FIR_WR_ADDR;
reg  [2:0] fsm;             //state machine register
reg  COEF_RD_ENABLE;
//Assertion of this signal indicates coefficents are transmitted to filter
reg  COEF_ON;
//Coefficient buffer address
reg  [6:0] COEF_RADDR;

//FSM states
parameter [2:0] IDLE = 3'b000, //IDLE state
                COEF_ADDR=3'b001, // Passing coefficients to FIR
                COEFON=3'b010, //Enabling coefficient on signal in FIR
                FIR_RDEN=3'b011, //Reading Data from FIR
                Filter_Com_Chk=3'b100, //Reading FFT data and passing it to buffers
                WE_FFT_low=3'b101; //FFT write disable

//Filter Control State Machine
always@(posedge CLK or negedge RESET_N) 
begin :MAIN_FSM
 if(RESET_N == 1'b0)
 begin
  fsm <= IDLE;
  FIR_WR_ENABLE <= 1'b0;
  FFT_WR_ENABLE <= 1'b0;
  FIR_WR_ADDR <= 10'b0000000000;
  FFT_WADDR <= 8'b00000000;
  FILTER_COMPLETE <=1'b0;
  COEF_RADDR <= 7'b0111111;
  COEF_RD_ENABLE <=1'b0;
  COEF_ON <= 1'b0;
  COEF_I_VALID <= 1'b0;
  DATA_I_VALID <= 1'b0;
  FFT_I_VALID <= 1'b0; 
 end
 else
 begin
  COEF_I_VALID <= COEF_RD_ENABLE;
  DATA_I_VALID <= FIR_WR_ENABLE;
  case (fsm)
   IDLE :  begin
    if (SEL)
    begin 
     COEF_RD_ENABLE <= 1'b1;
     FIR_WR_ENABLE <= 1'b0;
     FFT_WR_ENABLE <=1'b0;
     FIR_WR_ADDR <= 10'b0000000000;
     FFT_WADDR <= 8'b00000000;
     COEF_RADDR <= 7'b0111111;
     COEF_ON <= 1'b0;
     fsm <= COEF_ADDR;
    end
    else        
    begin
     fsm <= IDLE;
     FIR_WR_ENABLE <= 1'b0;
     FILTER_COMPLETE <=1'b0;
    end
   end
   COEF_ADDR :  begin 
    COEF_RADDR <= COEF_RADDR-1;
    if(COEF_RADDR == 7'b0000000) begin
     fsm <= COEFON;
     COEF_RD_ENABLE <=1'b0;
     end
    else
     fsm <= COEF_ADDR;
   end
   COEFON : begin      
    COEF_RD_ENABLE <=1'b0;
    COEF_ON <= 1'b1;
    fsm <= FIR_RDEN;
   end
   FIR_RDEN : begin 
	COEF_ON <= 1'b0;
    if (FIR_WR_ENABLE==1'b0)
    begin
    FIR_WR_ENABLE <=1'b1;
    FIR_WR_ADDR <=10'b0;
    end
    
	else
    begin
    FIR_WR_ADDR <= FIR_WR_ADDR+1;   
    end
    
	if(FIR_WR_ADDR == 10'b0001111111)
     FFT_I_VALID <= 1'b1;
	if(FIR_WR_ADDR == 10'b1111111111)
    begin
     fsm <= Filter_Com_Chk;
     FIR_WR_ENABLE <= 1'b0; 
     end
     else
      fsm <= FIR_RDEN;

end
   
   Filter_Com_Chk :  begin   
    FFT_I_VALID <= 1'b0;   
    if (FFT_START)
    begin 
      if(FFT_WR_ENABLE==1'b0)
      begin
      FFT_WADDR <= 8'b0; 
      FFT_WR_ENABLE <= 1'b1;
      end
    
     else
     FFT_WADDR <= FFT_WADDR+1; 
     end
    
     if(FFT_WADDR == 8'b11111111)
     begin
      FILTER_COMPLETE <=1'b1;
      FFT_WR_ENABLE<=1'b0;
      fsm <=IDLE;
     end
     else 
     begin
      fsm <= Filter_Com_Chk;                              
     end
    end
   
   default : fsm <= IDLE;
  endcase
 end
end// : MAIN_FSM
 
endmodule// : FILTERCONTROL_FSM
