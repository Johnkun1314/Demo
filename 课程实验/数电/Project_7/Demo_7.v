`timescale 1ns / 1ps

module Demo_7(       
       input C0,Add_Sub,
		 input[3:0] A,B,
		 output reg C4,ZF,CF,
		 output reg[3:0] F
       );
		 always@(*)
		 begin
		  if(Add_Sub)
    		  {C4,F}=A+B+C0;
		  else       
    		  {C4,F}=A-B-C0;
		 begin
		 if(F==4'b0000)  
		    ZF=1;
		 else      
    		 ZF=0;
		 end
		 begin
		 if(Add_Sub)   
   		 begin 
			  if(C4==1)
    			  CF=1;
			else  
			     CF=0;
			end
		 else  
   		 begin 
			  if(C4==1) 
			     CF=0;
			  else 
			     CF=1;
			end
		 end
		 end		
endmodule
