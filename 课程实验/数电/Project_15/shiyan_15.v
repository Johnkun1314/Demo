`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:39 12/01/2018 
// Design Name: 
// Module Name:    shiyan_15 
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
module shiyan_15(oe,s,clk,d,q);
       input oe,clk;
		 input [3:0] d;
		 input [1:0] s;
		 output reg [3:0] q;
		 always@(posedge clk or posedge oe)
		 begin
		 if(oe) q<=4'bzzzz;
		 else if(s==0) q<=q;   //����
		 else if(s==2'b10) q<={q[0],q[3:1]}; //ѭ������
		 else if(s==2'b01) q<={q[2:0],q[3]}; //ѭ������
		 else q<=d;   //����
		 end


    


endmodule
