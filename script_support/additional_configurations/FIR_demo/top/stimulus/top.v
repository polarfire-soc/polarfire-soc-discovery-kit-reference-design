
//-------------------------------------------------------------------
//                                                                 
//  Microsemi Corporation Proprietary and Confidential
//  Copyright 2017 Microsemi Corporation. All rights reserved.
//                                                                  
//  ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
//  ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED 
//  IN ADVANCE IN WRITING.
//
//-------------------------------------------------------------------
// Title       : testbench
// Created     : April-2017
// Description : Top level test bench file 
//               The testbench passes stimulus and simulates the filter pattern and waveform selection. 
//               The testbench contains the test selection for the coefficient inputs (low-pass, high-pass, band-pass, and band-reject) and data input. 
//               It also monitors the UART_IF module status signals, output signals (DATAOUT) and FFT output status signals (DATA Valid, output ready) for the verification of filter output. 
// Hierarchy   :
//               testbench    <-- This module                      
//                -- PF_DSP_FLOW_DEMO_TOP
//                   -- COREFFT_0 
//                   -- FIR_RTL 
//                   -- UART_IF    
//                   -- FILTERCONTROL_FSM_0   
//                   -- PF_COEF_BUF              
//                   -- PF_FFT_IM_BUF              
//                   -- PF_FFT_RE_BUF              
//                   -- PF_FIR_IN_BUF              
//                   -- PF_FIR_OUT_BUF                      
//-------------------------------------------------------------------

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 4;
parameter SLOWCLK_PERIOD =32;

reg SYSCLK;
reg SLOWCLK; //slow clock
reg NSYSRESET;
reg [15:0] FIR_OUT_RDATA;
wire TX;
reg RX;
wire [15:0] R_DATA;
reg [7:0] DATA_VAL;
wire [7:0] DATA_OUT;
reg RX_RDY,TX_RDY;
reg start;
reg fft_opr;
//wire [2:0] DEBUG_INFO;
reg [15:0] mean_val;

//Reading coefficients file
integer coe_data_file ; // file handler
integer coe_scan_file ; // file handler
reg signed [15:0] captured_coe;
`define NULL 0 
reg [15:0] mem_coe [63:0]; 
reg [15:0] coe_addr;
integer data_file ; // file handler
integer scan_file ; // file handler
reg signed [15:0] captured_data;
reg [15:0] mem_data [1023:0]; 
reg [15:0] data_addr;
reg f8,l8;

wire [15:0] tcomp,tcom2;

initial
begin
    SYSCLK = 1'b0;
    SLOWCLK =1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end

//Reading input data file
initial begin
 data_file = $fopen("data_file.dat", "r");
 if (data_file == `NULL) begin
  $display("data_file handle was NULL");
  $finish;
 end
end
//COE File reading
initial begin
 coe_data_file = $fopen("coe_file_Low_pass.dat", "r");
 if (coe_data_file == `NULL) begin
  $display("coe_file handle was NULL");
  $finish;
 end
end

//Copying the coefficients contents to memory
always @(posedge SYSCLK) begin
 if(NSYSRESET == 1'b0) begin
  coe_addr <= 0;
 end 
 else begin
  coe_scan_file = $fscanf(coe_data_file, "%d\n", captured_coe ); 
  mem_coe[coe_addr] = captured_coe;
  coe_addr = coe_addr + 1'b1;
 end
end

//End of reading coe

always @(posedge SYSCLK) begin
 if(NSYSRESET == 1'b0) begin
  data_addr <= 0;
 end
 else begin
  scan_file = $fscanf(data_file, "%d\n", captured_data); 
  mem_data[data_addr] = captured_data;
  data_addr = data_addr + 1'b1;
 end
end


////End of reading data



//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;
    
    
always @(SLOWCLK)

    #(SLOWCLK_PERIOD / 2.0) SLOWCLK <= !SLOWCLK;

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  PF_DSP_FLOW_DEMO_TOP PF_DSP_FLOW_DEMO_TOP_0
//////////////////////////////////////////////////////////////////////
PFSOC_DSP_FLOW_TOP PFSOC_DSP_FLOW_TOP_0 (
    // Inputs
    .CLK(SYSCLK),
    .RESET_N(NSYSRESET),
    .SLOWCLK(SLOWCLK),
    // Outputs
    .DATA_IN(DATA_VAL),
    .DATA_OUT(DATA_OUT),
    .RX_RDY(RX_RDY),
    .TX_RDY(TX_RDY)
);

reg [15:0] mem_coe_addr,mem_addr;
reg [3:0] rfsm;
reg addr_inc;

//FSM states
parameter IDLE = 4'b0000,UART_HS=4'b0001,COEF_TR=4'b0010,UART_HS_2=4'b0011,DATA_TR=4'b0100,UART_HS_3=4'b0101,FILT_COMP=4'b0110,UART_COM=4'b0111,UART_COM2=4'b1000,COEF_DEL=4'b1001;

//Actual TB
reg [2:0] dchk;
always @(posedge SYSCLK) begin
 if(~NSYSRESET)
 begin
  FIR_OUT_RDATA <= {16{1'b0}};
  RX <= 1'b0;
  RX_RDY = 1'b0;
  TX_RDY = 1'b0;
  start <= 1'b0;
  DATA_VAL <= 8'h00;
  coe_addr <= 0;
  mem_coe_addr <= 16'h0000;
  mem_addr <= 16'h0000;
  f8 <= 1'b0;
  l8 <= 1'b0;
  rfsm <= IDLE;
  addr_inc <= 1'b0;
  dchk <= 3'b000;
 end
 else
 begin
  case (rfsm)
   IDLE :  
   begin
    RX_RDY <= 1'b1; 
    DATA_VAL <= 8'b00111001;
    rfsm <= UART_COM;
   end  
   UART_COM :  
   begin    
    if(DATA_OUT == 8'b01000110) 
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b0;
     rfsm <=  UART_COM2;
    end
    else
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b1;
     rfsm <=  UART_COM;
    end
   end
   UART_COM2 :  
   begin
    RX_RDY <= 1'b1; 
    DATA_VAL <= 8'b01101000;
    rfsm <= UART_HS;
   end 
   UART_HS :  
   begin    
    if(DATA_OUT == 8'b01100001) 
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b0;
     rfsm <=  COEF_DEL;
    end
    else
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b1;
     rfsm <=  UART_HS;
    end
   end
   COEF_DEL :  
   begin
     rfsm <=  COEF_TR;
   end
   COEF_TR :  
   begin
    if(PFSOC_DSP_FLOW_TOP_0.UART_IF_0.OEN == 1'b0 && RX_RDY == 1'b1) 
    begin
     addr_inc <= ~addr_inc;
    end
    if(RX_RDY == 1'b0) 
    begin
     RX_RDY <= 1'b1;
     if(addr_inc == 1'b0)
      DATA_VAL <= mem_coe[mem_coe_addr][15:8];
     else 
     begin
      DATA_VAL <= mem_coe[mem_coe_addr][7:0];
      if(mem_coe_addr == 16'h003F) begin
       mem_coe_addr <= 16'h003F;
       dchk <= dchk + 1'b1;
       if(dchk == 3'b100) 
         rfsm <= UART_HS_2;
      end
      else 
         mem_coe_addr <= mem_coe_addr + 1'b1;
     end
    end 
    else 
    begin
     RX_RDY <= PFSOC_DSP_FLOW_TOP_0.UART_IF_0.OEN;		       
    end
    if(mem_coe_addr == 16'h003F && dchk == 3'b011) 
    begin
     rfsm <= UART_HS_2;
     TX_RDY <= 1'b1;
    end
    else 
    begin
     rfsm <= COEF_TR;
    end
   end
   UART_HS_2 :  
   begin   
    addr_inc <= 1'b0;
    if(DATA_OUT == 8'b01110010)         
    begin
     RX_RDY <= 1'b1; 
     TX_RDY <= 1'b0;
     rfsm <=  DATA_TR;
    end
    else
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b0;
     rfsm <=  DATA_TR;
    end
   end
   DATA_TR :  
   begin
    if(PFSOC_DSP_FLOW_TOP_0.UART_IF_0.OEN == 1'b0 && RX_RDY == 1'b1) 
    begin
     addr_inc <= ~addr_inc;
    end		
    if(RX_RDY == 1'b0) 
    begin 
     RX_RDY <= 1'b1;
     if(addr_inc == 1'b0)
      DATA_VAL <= mem_data[mem_addr][15:8];
     else 
     begin
      DATA_VAL <= mem_data[mem_addr][7:0];
      mem_addr <= mem_addr + 1'b1;
     end
    end
    else 
    begin
     RX_RDY <= PFSOC_DSP_FLOW_TOP_0.UART_IF_0.OEN;
    end
    if(mem_addr == 11'b10000000000) 
    begin
     rfsm <= UART_HS_3;           
     TX_RDY <= 1'b1;
    end
    else 
    begin
     rfsm <= DATA_TR;                  
    end
   end
   UART_HS_3 :  
   begin    
    addr_inc <= 1'b0;
    if(DATA_OUT == 8'b01101001) 
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b0;
     rfsm <=  FILT_COMP;
    end
    else
    begin
     RX_RDY <= 1'b0; 
     TX_RDY <= 1'b1;
     rfsm <=  UART_HS_3;
    end
   end
   FILT_COMP :  
   begin     
   if(PFSOC_DSP_FLOW_TOP_0.FILTERCONTROL_FSM_0.FILTER_COMPLETE == 1'b1)
   begin
    $display ("FIR Filter test completed succesfully");
    rfsm <= IDLE;
   end
   else
    rfsm <= FILT_COMP;
  end
  default : rfsm <= IDLE;
  endcase
 end
end

//Filter completeion check
always @(posedge SYSCLK) 
begin
 if(PFSOC_DSP_FLOW_TOP_0.FILTERCONTROL_FSM_0.FILTER_COMPLETE == 1'b1) begin
   $display ("FIR Filter test completed succesfully");
   //$finish;
  end
end

//Reading FFT output
always @(posedge SYSCLK) begin
 if(NSYSRESET == 1'b0) begin
  fft_opr <= 1'b0;
 end 
 else if(PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.OUTP_READY == 1'b1 && fft_opr == 1'b0) begin
  fft_opr <= 1'b1;   
  $display ("Reading the FFT output...");
 end
end

//FFT output values
assign tcomp = (PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_IM[15])? ~(PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_IM)+1'b1: (PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_IM);
assign tcom2 = (PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_RE[15])? ~(PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_RE)+1'b1: (PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_RE);

//Mean value generation
always @(posedge SYSCLK) begin
 if(NSYSRESET == 1'b0) begin
   data_addr <= 0;
   mean_val <= 0;
 end else begin
  if(PFSOC_DSP_FLOW_TOP_0.COREFFT_C0_0.DATAO_VALID == 1'b1) begin
   mean_val <= (tcomp+tcom2)/2;
  end
 end
end

//End of Simulation
initial begin
 #34000
 $display ("Test Completed succesfully");
 $stop;
end

endmodule


