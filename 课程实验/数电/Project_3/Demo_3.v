`timescale 1ns / 1ps


module project3(X,Y);
	input [3:0] X;
	output[3:0] Y;
	reg[3:0] Y;
		  always @(*)
		 
           begin 
			     if(X==4'b0000)
				  Y<=4'b0000;
				  else if(X==4'b0001)
				  Y<=4'b0001;
				  else if(X==4'b0010)
				  Y<=4'b0011;
				  else if(X==4'b0011)
				  Y<=4'b0010;
				  else if(X==4'b0100)
				  Y<=4'b0110;
				  else if(X==4'b0101)
				  Y<=4'b0111;
				  else if(X==4'b0110)
				  Y<=4'b0101;
				  else if(X==4'b0111)
				  Y<=4'b0100;
				  else if(X==4'b1000)
				  Y<=4'b1100;
				  else if(X==4'b1001)
				  Y<=4'b1101;
				  else
				  Y<=4'bzzzz;
				 
			  end;

endmodule
