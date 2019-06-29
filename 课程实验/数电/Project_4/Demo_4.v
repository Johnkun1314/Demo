`timescale 1ns / 1ps

module Demo_4(EN,In,Y,Done);
   input EN;
	input [7:0]  In;
	output reg [2:0] Y;
	output reg Done;
	reg [3:0] i;
	always @(EN or In)
	  begin
	    if(EN) begin Y<=0;Done<=0;end
		 else
		 begin
		   Y<=0;
			Done<=0;
         for(i=8;i>0;i=i-1)
			  begin
			    if(In[i-1]==1) begin Y<=i-1;Done<=1;end
			  end
       end
	 end
      
endmodule