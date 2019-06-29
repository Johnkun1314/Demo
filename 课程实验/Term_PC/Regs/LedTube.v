`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 

module LedTube(data,clk,which,led
    );
	input[32:1]data;	
	input clk;
	output reg [2:0]which=0;
	output reg [7:0]led;
	
	reg [3:0]digit;
	reg [19:0] times=0;
	
   always @ (posedge clk)  
      begin  
       if(times == 2)  begin times <= 15'b0; end
		  else begin times <= times + 15'b1; end
		end
  
    always @ (posedge clk)  
	 begin 
	   if(which > 3'b111) begin which<=0; end
	    else if(times == 2)  begin which<=which+1; end
	 end
	
	always @(*)
	begin
		case(which)
			 3'h0: digit <= data[4:1];
			 3'h1: digit <= data[8:5];
			 3'h2: digit <= data[12:9];
			 3'h3: digit <= data[16:13];
			 3'h4: digit <= data[20:17];
			 3'h5: digit <= data[24:21];
			 3'h6: digit <= data[28:25]; 
			 3'h7: digit <= data[32:29]; 
		 endcase
	end
	always @(*)
	begin
		case(digit)
			4'h0: led <= 8'b0000_0011;
         4'h1: led <= 8'b1001_1111;
         4'h2: led <= 8'b0010_0101;
         4'h3: led <= 8'b0000_1101;
         4'h4: led <= 8'b1001_1001;
         4'h5: led <= 8'b0100_1001;
         4'h6: led <= 8'b0100_0001;
         4'h7: led <= 8'b0001_1111;
         4'h8: led <= 8'b0000_0001;
         4'h9: led <= 8'b0000_1001;
         4'hA: led <= 8'b0001_0001;
         4'hB: led <= 8'b1100_0001;
         4'hC: led <= 8'b0110_0011;
         4'hD: led <= 8'b1000_0101;
         4'hE: led <= 8'b0110_0001;
         4'hF: led <= 8'b0111_0001;
		endcase
	end
endmodule
