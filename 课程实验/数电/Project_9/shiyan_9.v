`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:08 11/26/2018 
// Design Name: 
// Module Name:    shiyan_9 
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
module shiyan_9(pre,clr,clk,d,q,qb);
       input pre,clr,clk,d;
		 output reg q,qb;     //clr=0;pre=0;²»È·¶¨
       always@(posedge clk or negedge pre or negedge clr)
		 begin
		 if(!pre)
		 begin q<=1'b1;qb<=1'b0;end
		 else if(!clr) 
		 begin q<=1'b0;qb<=1'b1;end
		 else begin q<=d;qb<=~d;end
		 end 
		  


endmodule
