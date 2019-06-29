`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:35 11/28/2018 
// Design Name: 
// Module Name:    shiyan_11 
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
module shiyan_11(mr,load,en,clk,q,d,co);
        input load,clk,en,mr;
		  input [3:0] d;
		  output reg [3:0] q;
		  output reg co;
		  always@(negedge mr or posedge clk or negedge load)
		  begin
		  if(!mr) begin q<=0;co<=0;end
		  else if(!load) q<=d;
		  else if(!en) q<=q;
		  else {co,q}<=q+1;
		  end
		  
		  
       



endmodule
