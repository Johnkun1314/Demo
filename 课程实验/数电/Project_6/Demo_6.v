`timescale 1ns / 1ps

module Demo_6(a,b,c0,c4,f );
     input [3:0] a,b;
	  output [3:0] f;
	  input c0;
	  output c4;
	  reg c4;
	  reg [2:0] s;
	  reg [3:0] f;
	  always @(a or b or c0)
     begin
	     s[0]=(a[0]&b[0])|(a[0]|b[0])&c0;
		  s[1]=(a[1]&b[1])|(a[1]|b[1])&s[0];
		  s[2]=(a[2]&b[2])|(a[2]|b[2])&s[1];
		  c4=(a[2]&b[2])|(a[2]|b[2])&s[2];
		  
		  f[0]=a[0]^b[0]^c0;
		  f[1]=a[1]^b[1]^s[0];
		  f[2]=a[2]^b[2]^s[1];
		  f[3]=a[3]^b[3]^s[2];
     end	  
endmodule
