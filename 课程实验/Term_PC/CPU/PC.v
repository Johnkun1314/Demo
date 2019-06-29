`timescale 1ns / 1ps
module PC(inst_code,clk,reset,PC,PC_new);
    input clk; 
	 output wire [31:0]inst_code;
    input reset; 
	 output reg[31:0]PC; 
	 output [31:0]PC_new; 
	 
	 assign PC_new=PC+4; rom FA0(clk,PC[7:2],inst_code); 
	 always@(posedge clk or posedge reset)
             begin
                  if(reset) begin PC<=32'H00000000;end
                       else begin PC<=PC_new;end
               end


