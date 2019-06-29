`timescale 1ns / 1ps
module Demo_5(A,B,Y);
   input [3:0] A ;
   wire [3:0] A ;
   input [3:0] B ;
   wire [3:0] B ;
 
   output [2:0] Y ;
   reg [2:0] Y ;

 always @ ( A or B )
     begin 
         if ( A > B ) 
            Y = 3'b011;
         else if ( A == B)
            Y = 3'b101;        
			else 
             Y = 3'b110;
      end
endmodule