`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:44 11/19/2018 
// Design Name: 
// Module Name:    text_2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module text_2(A,B,C,D,S,EN,Y
    );
     input [1:0] A,B,C,D,S;
	  output [1:0] Y;
	  input EN;
	  assign Y[1]=EN&((~S[0])&(~S[1])&A[0])|(S[0]&(~S[1])&C[0])|((~S[0])&S[1]&B[0])|(S[0]&S[1]&D[0]);
     assign Y[0]=EN&((~S[0])&(~S[1])&A[1])|(S[0]&(~S[1])&C[1])|((~S[0])&S[1]&B[1])|(S[0]&S[1]&D[1]);
endmodule
