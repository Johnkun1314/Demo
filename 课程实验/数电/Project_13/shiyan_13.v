`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:59:08 11/29/2018 
// Design Name: 
// Module Name:    shiyan_13 
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
module shiyan_13(mr,load,en,up_dn,clk,q,co,d);
       input mr,load,en,up_dn,clk;
		 input [3:0] d;
		 output reg [3:0] q;
		 output reg co;
		 always@(posedge mr or negedge load or posedge clk)
       begin 
       if(mr) begin q<=0;co<=0;end
       else if(!load) begin q<=d;co<=0;end
       else if(!en)	 q<=q;
       else if(!up_dn)  {co,q}<=q+1;
       else {co,q}<=q-1;
       end 		 
		 
		 
endmodule
