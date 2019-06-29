`timescale 1ns / 1ps

module jicunqi(addr, read,write,clk,out,in );
  input [2:0] addr;
  input [3:0] in;
  input read;
  input write;
  input clk;
  output [3:0] out;
  reg [3:0] out;
  reg [3:0] r1,r2,r3,r4,r5,r6,r7,r8;
   always@(posedge read or posedge write or posedge clk)
	 begin
	    if(read==1)
		 begin
		    if(write==1)
			   out<=4'bzzzz;
				else
				  case(addr)
		         0: out<=r1;
		         1: out<=r2;
		         2: out<=r3;
		         3: out<=r4;
		         4: out<=r5;
		         5: out<=r6;
		         6: out<=r7;
		   default: out<=r8;
		 endcase
		end
				
			else
			begin
			if(write==1)
			  begin
				  case(addr)
		 0: begin r1<=in;out<=4'bz;end   
		 1: begin r2<=in;out<=4'bz;end
		 2: begin r3<=in;out<=4'bz;end
		 3: begin r4<=in;out<=4'bz;end
		 4: begin r5<=in;out<=4'bz;end
		 5: begin r6<=in;out<=4'bz;end
		 6: begin r7<=in;out<=4'bz;end
		 default: begin r8<=in;out<=4'bz;end
		 endcase

			  end
			else
			out<=4'bzzzz;
	    end
	 end
endmodule
