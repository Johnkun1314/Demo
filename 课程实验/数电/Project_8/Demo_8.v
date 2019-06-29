`timescale 1ns / 1ps

module Demo_8(S,R,Q1,Q2);
     input S,R;
	  output Q1,Q2;
	  reg Q1,Q2;
	   always @(S or R)
		begin
		   if(R==0&&S==0)
			begin
			end
			 else if(R==1&&S==0)
			 begin
			   Q1=0;
				Q2=1;
			 end
			 else if(R==0&&S==1)
			 begin
			   Q1=1;
				Q2=0;
			 end
			 else if(S==1&&R==1)
			 begin
			 end
		end
endmodule
