`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:05 11/28/2018 
// Design Name: 
// Module Name:    shiyan_10 
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
module shiyan_10(clk,j,k,q,qb);
       input clk,j,k;
		 output q,qb;
		 reg q=0;
		 assign qb=~q;     //赋初值来表示保持功能
		 always@(posedge clk or posedge j or posedge k)
		 begin 
		 case({j,k})
		    2'b00:q<=q;
			 2'b01:q<=0;
			 2'b10:q<=1;
			 2'b11:q<=~q;
		 endcase
		 end
		 
    


endmodule
