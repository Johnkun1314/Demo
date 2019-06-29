`timescale 1ns / 1ps

module led(clk,led,rst  );
	input rst;
   input clk;
	output reg [7:0] led;
	
	reg [24:0] buffer;
	reg clk_buffer;
	reg  [4:0] status;
	

	 
	 // ±÷”
	 always@(posedge clk or posedge rst)
	   begin
		  if(rst)
		   begin
			  buffer<=0;
			  clk_buffer<=0;
			  status<=0;
			end
			
			else if(buffer==25'd6)
			  begin
			     clk_buffer<=~clk_buffer;
				  buffer<=0;
				  status<=status+1'd1;
			  end
			  
			  else
			  buffer<=buffer+1'd1;
		end
	 
	 always@( posedge rst or posedge clk_buffer)
	    begin
	       case(status)
           0:led<=10000000;
           1:led<=01000000;
           2:led<=00100000;
           3:led<=00010000;
           4:led<=00001000;
           5:led<=00000100;
           6:led<=10000010;
           7:led<=10000001;
           8:led<=10000010;
           9:led<=00000100;
          10:led<=00001000;
          11:led<=00010000;
          12:led<=00100000;
          13:led<=01000000;
          14:led<=10000000; 
          15:led<=10000001;
          16:led<=01000010;
          17:led<=00100100;
          18:led<=00011000;
          19:led<=00100100;
          20:led<=01000010;
          21:led<=10000001;	
			 endcase
			 
		 end
endmodule


