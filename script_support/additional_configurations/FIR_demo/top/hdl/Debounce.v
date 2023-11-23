///////////////////////////////////////////////////////////////////////////////								
//-------------------------------------------------------------------------								
//                                                                								
//  © 2021 Microchip Technology Inc. and its subsidiaries								
//  All rights reserved.								
//                                                                 								
//  ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN								
//  ACCORDANCE WITH THE MICROCHIP LICENSE AGREEMENT AND MUST BE APPROVED								
//  IN ADVANCE IN WRITING.								
//								
//-------------------------------------------------------------------------								
// Title       : <debounce>								
// Created     : <July 2021>								
// Description : This module implements the debounce logic to remove the switch   
//               bounces and generates a single pulse to reset the design when switch 
//               pressed on board.								
// Hierarchy   :	NA							                        								
//-------------------------------------------------------------------------								
								

module  Debounce(
 input   clk_i, 
 input   resetn_i, 
 input   switch_i,	
 
 output  interrupt_o							
);

///////////////////////////////////////////////////////////////////////////////
// Parameters
///////////////////////////////////////////////////////////////////////////////
parameter N = 14 ;

///////////////////////////////////////////////////////////////////////////////
// Internal signals
///////////////////////////////////////////////////////////////////////////////
reg            interrupt_reg1;
reg            interrupt_reg2;
reg            interrupt_reg3;
reg [N-2 : 0]  q_reg;						// timing regs
reg [N-1 : 0]  q_next;
reg            DFF1, DFF2;					// input flip-flops
wire           q_add;						// control flags
wire           q_reset;
wire reset_sync_n;                         // internally generated reset
reg [1:0] reset_sync_reg;                  // reset synchronizer

//reset synchronizer block
always@ (posedge clk_i or negedge resetn_i)
begin

  if(!resetn_i)
  begin
    reset_sync_reg [1:0] <= 2'b0;
  end

  else
  begin
    reset_sync_reg[1:0] <= {reset_sync_reg [0], 1'b1};
  end

end

assign reset_sync_n = reset_sync_reg [1];

//// ------------------------------------------------------

//continuous assignment for counter control

//xor input flip flops to look for level chage to reset counter
assign q_reset = (DFF1  ^ DFF2);

// add to counter when q_reg msb is equal to 0		
assign  q_add  = ~(q_reg[N-2]);			
	
//// combo counter to manage q_next	
always @ ( q_reset, q_add, q_reg)
begin
   case( {q_reset , q_add})
   2'b00 :
      q_next <= {1'b0,q_reg};
   2'b01 :
      q_next <= q_reg + 1'b1;
   default :
      q_next <= { N {1'b0} };
   endcase 	
end
	
//// Flip flop inputs and q_reg update
always @ ( posedge clk_i, negedge reset_sync_n )
begin
   if(reset_sync_n ==  1'b0)
   begin
      DFF1             <= 1'b0;
      DFF2             <= 1'b0;
      q_reg            <= 0;
   end
   else
   begin
      DFF1             <= switch_i;
      DFF2             <= DFF1;
      q_reg            <= q_next[N-2:0];
   end
end
	
//// counter control
always @ ( posedge clk_i, negedge reset_sync_n )
begin
   if(reset_sync_n ==  1'b0)
   begin
      interrupt_reg1   <= 1'b0;  
      interrupt_reg2   <= 1'b0;       
      interrupt_reg3   <= 1'b0;           
   end
   else
   begin    
      interrupt_reg2   <= interrupt_reg1;   
      interrupt_reg3   <= interrupt_reg2;       
      if(q_reg[N-2] == 1'b1)
         interrupt_reg1  <= ~DFF2; //inverting interrupt
      else
         interrupt_reg1 <= interrupt_reg1;
   end
end

//to generate interrupt pulse on switch input posedge		
assign interrupt_o = interrupt_reg1 & (~interrupt_reg3);

endmodule
