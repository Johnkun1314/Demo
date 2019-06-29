`timescale 1ns / 1ps	

module Get_Inst(inst_code,clk,reset,PC);
    input clk; 
	 output  [31:0]inst_code;
    input reset; 
	 
	 output reg[31:0]PC; 

RAM_B RAM(
     .clka(clk), // input clka
     .addra(PC[7:2]), // input [5 : 0] addra
     .douta(inst_code) // output [31 : 0] douta
);
	 always@(negedge clk)  
	   begin 
		  if(reset) begin PC<=0; end
		     else  begin  PC<=PC+4; end
		end
                     
endmodule


