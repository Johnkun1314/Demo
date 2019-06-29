`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:11:34 11/29/2018 
// Design Name: 
// Module Name:    shiyan_12 
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
module shiyan_12(mr,en,clk,q,co);
        input clk,en,mr;
		  output reg [3:0] q;
		  output reg co;
		  always@(negedge mr or posedge clk)
		  begin
		  if(!mr) begin q<=0;co<=0;end
		  else if(!en) q<=q;
		  else if(q==0) q<=4'b1001;   //Ñ­»·¼ÆÊý
		  else q<=q-1'b1;
		  end
		  
		  always@(q)
		  begin
		  if(q==0) co=1;
		  else co=0;
        end		  
		  
       



endmodule
