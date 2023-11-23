//UART_IF.v
//-------------------------------------------------------------------                                                               
// 2021 Microchip Technology Inc. and its subsidiaries								
// All rights reserved.								
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN								
// ACCORDANCE WITH THE MICROCHIP LICENSE AGREEMENT AND MUST BE APPROVED								
// IN ADVANCE IN WRITING.
//
//-------------------------------------------------------------------
// Title       : Data Handler
// Created     : April-2017
// Description : The UART_IF consists of the finite state machine handling the control operations between test bench and the fabric logic. 
//               Control operations include the loading of filter coefficients, filter input data to the corresponding input data buffer, coefficient buffers, 
//               and send and receive data from the testbench.
// Revision    : 1.0 Initial Release
// Hierarchy   :
//               PF_DSP_FLOW_TOP
//                --PF_CCC_0
//                --COREUART_0                      
//                -- PF_DSP_FLOW_DEMO_TOP
//                   -- COREFFT_0 
//                   -- FIR_CORE_0
//                   -- UART_IF <-- This module    
//                   -- FILTERCONTROL_FSM_0   
//                   -- PF_COEF_BUF              
//                   -- PF_FFT_IM_BUF              
//                   -- PF_FFT_RE_BUF              
//                   -- PF_FIR_IN_BUF              
//                   -- PF_FIR_OUT_BUF    
// Target device: <Family:PolarFire> <Die:MPF300TS_ES> <Pkg:FCG1152>                
//-------------------------------------------------------------------

module UART_IF( 
CLK,
DATA_IN,
DATA_OUT,
RESET_N,
WEN,
OEN,
TX_RDY,
RX_RDY,
WDATA,
FIR_OUT_RDATA,
FFT_RE_RDATA,
FFT_IM_RDATA,
COEF_WEN,
DATA_WEN,
FIR_OUT_REN,
FFT_RE_REN,
FFT_IM_REN,
COEF_WADDR,
DATA_WADDR,
R_ADDR,
SEL,
FILTER_COMPLETE
);

//Input signals
input [7:0] DATA_IN;
output [7:0] DATA_OUT;
//Clock and Reset
input CLK;
input RESET_N;
//Write enable
output WEN;
//Output enable
output OEN;
//Select
output SEL;
//UART TX and RX ready
input TX_RDY;
input RX_RDY;
//Filter operation Complete
input FILTER_COMPLETE;
//FIT output signals
input [15:0] FIR_OUT_RDATA;
//FFT output signals
input [15:0] FFT_RE_RDATA;
input [15:0] FFT_IM_RDATA;

//Output signals
output signed [15:0] WDATA;
//Coefficient write enable
output COEF_WEN;
//Data write enable
output DATA_WEN;
//Coefficient and Data buffer Addresses
output [7:0] COEF_WADDR;
output [10:0] DATA_WADDR;
//Read address
output [10:0] R_ADDR;
//FIR Read Enable
output FIR_OUT_REN;
//FFT RAM Read enable
output FFT_RE_REN;
output FFT_IM_REN;

wire [7:0] DATA_IN;
reg [7:0] DATA_OUT;
wire CLK;
wire RESET_N;
//UART RX and TX ready
wire TX_RDY;
wire RX_RDY;
reg WEN;
reg OEN;

wire [15:0] FIR_OUT_RDATA;
wire [15:0] FFT_RE_RDATA;
wire [15:0] FFT_IM_RDATA;

reg [15:0] WDATA;
reg [15:0] RDATA;
reg COEF_WEN;
reg DATA_WEN;
reg RAM_REN;
reg [7:0] COEF_WADDR;
reg [10:0] DATA_WADDR;
reg [10:0] R_ADDR;
reg SEL;
wire FILTER_COMPLETE;


//Statemachine state variable
reg [4:0] rfsm;
reg rx_en;
reg FIR_OUT_REN;
reg FFT_RE_REN;
reg FFT_IM_REN;
reg first_coeff_addr;
reg first_data_addr;



//Reading FFT data
always@(R_ADDR)
begin : FFT_RD_MEM
 if(R_ADDR[10] == 1'b0)
 begin
  FIR_OUT_REN = RAM_REN;
  FFT_RE_REN = 1'b0;
  FFT_IM_REN = 1'b0;
  RDATA = FIR_OUT_RDATA;
 end
 else if(R_ADDR[10]== 1'b1 && R_ADDR[8]==1'b0)
 begin
  FIR_OUT_REN = 1'b0;
  FFT_RE_REN = RAM_REN;
  FFT_IM_REN = 1'b0;
  RDATA = FFT_RE_RDATA;
 end
 else if(R_ADDR[10]== 1'b1 && R_ADDR[8]==1'b1)
 begin
  FIR_OUT_REN = 1'b0;
  FFT_RE_REN = 1'b0;
  FFT_IM_REN = RAM_REN;
  RDATA = FFT_IM_RDATA;
 end
 else
 begin
  FIR_OUT_REN = 1'b0;
  FFT_RE_REN = 1'b0;
  FFT_IM_REN = 1'b0;
  RDATA = 16'b0;
 end
end// : FFT_RD_MEM


//FSM states
parameter [4:0] UART_HS_0=5'b00000,//UART Hand Shake
                UART_HS_1=5'b00001,//UART Hand Shake response
                UART_IC = 5'b00010,//UART hand shake 1
                UART_DO=5'b00011,//UART response
                COEF_W=5'b00100,//Coefficeint MSB eight bit write
                COEF_W_E=5'b00101,//Coefficent LSB eight bit write
                COEF_W_LAST=5'b00110,
                UART_HS=5'b00111,//UART handshake to indiacte coefficient read comeplete
                DATA_W=5'b01000,//Data MSB eight bit write
                DATA_W_E=5'b01001,//Data LSB eight bit write
                DATA_W_LAST=5'b01010,
                UART_HS2=5'b01011,//UART handshake to indiacte Data read comeplete
                FILTER_CC=5'b01100,//Filter complete check
                FFT_RR=5'b01101,//Filter read
                FFTO_U7=5'b01110,//Filter output MSB
                FFTO_L7=5'b01111,//Filter output LSB
                UTXR=5'b10000;//UART TX ready check


//Main statemachine
always @(posedge CLK or negedge RESET_N)
begin : MAIN_FSM
 if(RESET_N == 1'b0)
 begin
  COEF_WEN <= 1'b0;
  DATA_WADDR <= 11'h7FF;
  COEF_WADDR <= 8'hFF;//00;//11111111;
  RAM_REN <= 1'b1;
  R_ADDR <= 11'b11111111111;
  WDATA <= 16'h0000;
  DATA_OUT <=8'b0;
  rfsm <= UART_HS_0;
  WEN <= 1'b1;
  OEN <= 1'b1;
  rx_en <= 1'b0;
  SEL <= 1'b0;
  first_coeff_addr <=1'b0;
  first_data_addr<=1'b0;

 end
 else
 begin
  case (rfsm)
   UART_HS_0 :  begin
    if(RX_RDY == 1'b1) 
     if(DATA_IN == 8'b00111001) //9
     begin
      OEN  <= 1'b0;
      rfsm <= UART_HS_1;
     end
     else
     begin
      OEN  <= 1'b0;
      rfsm <= UART_HS_0;
     end
     else
      OEN <=1'b1;
   end  
//UART handshake check
   UART_HS_1 :  begin    
    if(TX_RDY == 1'b1)
    begin
     DATA_OUT <= 8'b01000110; //F
     WEN <= 1'b0;
    end
    else if (WEN == 1'b0)
    begin
     WEN <= 1'b1;
     OEN <=1'b1;
     rfsm <=  UART_IC;
    end
   end   
   UART_IC :  begin
    if(RX_RDY == 1'b1) 
     if(DATA_IN == 8'b01101000) //h
     begin
      OEN  <= 1'b0;
      rfsm <= UART_DO;
     end
     else
     begin
      OEN  <= 1'b0;
      rfsm <= UART_IC;
     end
     else
      OEN <=1'b1;
   end  
//UART handshake check
   UART_DO :  begin    
    if(TX_RDY == 1'b1)
    begin
     DATA_OUT <= 8'b01100001; //a
     WEN <= 1'b0;
    end
    else
    begin
     WEN <= 1'b1;
     OEN <=1'b1;
     rfsm <=  COEF_W;
    end
   end
   COEF_W :  begin
    if(RX_RDY == 1'b1) 
    begin
     RAM_REN  <= 1'b0;
     OEN      <= 1'b0;
     R_ADDR   <= 11'b11111111111;
     if(rx_en)
     begin
      COEF_WEN  <= 1'b0;
      WDATA[15:8] <= DATA_IN;
      rx_en <= 1'b0;
      rfsm  <= COEF_W_E;
     end 
    end
    else
    begin
     OEN <=1'b1;
     rx_en <=1'b1;
    end
   end
   COEF_W_E :  begin
    if(RX_RDY == 1'b1) 
    begin
     OEN  <= 1'b0;
     if(rx_en)
     begin
      COEF_WADDR <= COEF_WADDR + 1'b1;
      WDATA[7:0] <= DATA_IN;
      COEF_WEN  <= 1'b1;
      rx_en <= 1'b0;
      if(COEF_WADDR == 8'b00111110)
       rfsm  <= COEF_W_LAST;
      else
       rfsm  <= COEF_W;
     end 
    end
    else
    begin
     OEN <=1'b1;
     rx_en <=1'b1;
    end
   end
   
   COEF_W_LAST :  begin
    if(RX_RDY == 1'b1) 
    begin
     RAM_REN  <= 1'b0;
     OEN      <= 1'b0;
     R_ADDR   <= 11'b11111111111;
     COEF_WEN  <= 1'b0;
     rx_en <= 1'b0;
     rfsm  <= UART_HS;  
    end
   end
   
   UART_HS :  begin    
    if(TX_RDY == 1'b1)
    begin
     DATA_OUT <= 8'b01110010; // r
     WEN <= 1'b0;
    end
    else if (WEN == 1'b0)
    begin
     WEN <= 1'b1;
     OEN <=1'b1;
     rx_en <= 1'b1;
     rfsm <=  DATA_W;
    end
   end
   DATA_W :  begin
    if(RX_RDY == 1'b1) 
    begin
     RAM_REN  <= 1'b0;
     OEN  <= 1'b0;
     R_ADDR <= 11'b11111111111;
     if(rx_en)
     begin
      WDATA[15:8] <= DATA_IN;
      DATA_WEN  <= 1'b0;
      rx_en <= 1'b0;
      rfsm  <= DATA_W_E;
     end 
    end
    else
    begin
     OEN <=1'b1;
     rx_en <=1'b1;
    end
   end
   DATA_W_E :  begin
    if(RX_RDY == 1'b1) 
    begin
     OEN  <= 1'b0;
     if(rx_en)
     begin
      DATA_WADDR <= DATA_WADDR + 1'b1;
      WDATA[7:0] <= DATA_IN;
      DATA_WEN  <= 1'b1;
      rx_en <= 1'b0;
      if(DATA_WADDR == 11'b01111111110) //mod
      begin
       SEL <= 1'b1;
       rfsm  <= DATA_W_LAST ;
      end
      else
       rfsm <= DATA_W;
     end 
    end
    else
    begin
     OEN <=1'b1;
     rx_en <=1'b1;
    end
   end
 
DATA_W_LAST :  begin
    if(RX_RDY == 1'b1) 
    begin
     RAM_REN  <= 1'b0;
     OEN  <= 1'b0;
     R_ADDR <= 11'b11111111111;
    
     
      DATA_WEN  <= 1'b0;
      rx_en <= 1'b0;
      rfsm  <= UART_HS2;
     end
   end
   UART_HS2 :  begin    
    if(TX_RDY == 1'b1)
    begin
     DATA_OUT <= 8'b01101001; // i
     WEN <= 1'b0;
    end
    else if (WEN == 1'b0)
    begin
     WEN <= 1'b1;
     OEN <=1'b1;
     rx_en <= 1'b1;
     SEL <= 1'b0;
     rfsm <=  FILTER_CC;
    end
   end
   FILTER_CC :  begin     
    if(FILTER_COMPLETE == 1'b1)
    begin
     rfsm <= FFT_RR;
    end
   end
    FFT_RR: begin 
    if(TX_RDY == 1'b1)      
    begin
     OEN <=1'b1;
     COEF_WEN  <= 1'b0;
     RAM_REN  <= 1'b1;
     DATA_WADDR <= 11'h7FF;
     COEF_WADDR <= 8'hFF;
     R_ADDR <= R_ADDR + 1'b1;
     if(R_ADDR == 11'b10111111111)   
      rfsm <= UART_IC;             
     else
      rfsm <= FFTO_U7;
    end
   end
   FFTO_U7 :  begin    
    if(TX_RDY == 1'b1)
    begin
     DATA_OUT <= RDATA[15:8];
     WEN <= 1'b0;
    end
    else if (WEN == 1'b0)
    begin
     WEN <= 1'b1;
     rfsm <=  FFTO_L7;
    end
   end
   FFTO_L7 :  begin            
    if(TX_RDY == 1'b1)
    begin
     DATA_OUT <= RDATA[7:0];
     WEN <= 1'b0;
     rfsm <=  UTXR;
    end
    else if (WEN == 1'b0)
     WEN <= 1'b1;
   end
   UTXR :  begin     
    if(TX_RDY == 1'b0)
    begin
     rfsm <= FFT_RR;
     WEN <= 1'b1;
   end
   end
   default : rfsm <= UART_IC;
  endcase
 end
end// : MAIN_FSM


endmodule// : UART_IF

//UART_IF.v
