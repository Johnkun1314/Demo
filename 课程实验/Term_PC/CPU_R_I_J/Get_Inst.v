`timescale 1ns / 1ps	

module Get_Inst(inst_code,clk,PC);
    input clk; 
	 output [31:0] inst_code;
	 
	 input [31:0] PC; 

RAM_A RAM_A(
     .clka(clk), // input clka
     .addra(PC[7:2]), // input [5 : 0] addra
     .douta(inst_code) // output [31 : 0] douta
);

                     
endmodule

