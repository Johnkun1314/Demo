`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:52 11/30/2018 
// Design Name: 
// Module Name:    shiyan_14 
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
module shiyan_14(oe,clr,clk,q,d);
       input oe,clr,clk;
		 input [3:0] d;
		 output reg [3:0] q;
		 always@(posedge clk or posedge oe or posedge clr)
		 begin 
		 if(oe==1) q<=4'bzzzz;
		 else if(clr==1) q<=0;
		 else q<=d;
		 end
        
		  
		  
		  


endmodule
