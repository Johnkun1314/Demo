`timescale 1ns / 1ps

module PC_pc(inst_code,clk,reset,PC,PC_new);
    input clk; 
	 output  [31:0]inst_code;
    input reset; 
	 
	 output reg[31:0]PC; 
	 output [31:0]PC_new; 
	 
	 assign PC_new=PC+4; 

RAM_B RAM(
     .clka(clk), // input clka
     .addra(PC[7:2]), // input [5 : 0] addra
     .douta(inst_code) // output [31 : 0] douta
);
	 always@(*)  
	   begin 
		  if(reset) begin PC<=32'H00000000; end
		     else if(~clk) begin  PC<=PC_new; end
		end
                     
endmodule

