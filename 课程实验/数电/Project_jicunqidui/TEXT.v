`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:02 12/18/2018
// Design Name:   jicunqi
// Module Name:   E:/ISE/Project_jicunqidui/TEXT.v
// Project Name:  Project_jicunqidui
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jicunqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEXT;

	// Inputs
	reg [2:0] addr;
	reg read;
	reg write;
	reg clk;
	reg [3:0] in;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	jicunqi uut (
		.addr(addr), 
		.read(read), 
		.write(write), 
		.clk(clk), 
		.out(out), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		read = 0;
		write = 0;
		clk = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		#50;
		read=0;write=1;clk=1;in=6;addr=0;
			#50;
		read=0;write=0;clk=0;
         #50;
		read=0;write=1;clk=1;in=9;addr=1;
			#50;
		read=0;write=0;clk=0; 
		   #50;
		read=0;write=1;clk=1;in=15;addr=4;
			#50;
		read=0;write=0;clk=0;
		   #50;
		read=0;write=1;clk=1;in=13;addr=6;
			#50;
		read=0;write=0;clk=0;
		   #50;
		read=0;write=1;clk=1;in=10;addr=7;
			#50;
		read=0;write=0;clk=0;
		   #50;
		read=1;write=0;clk=1;addr=0;
			#50;
		read=0;write=0;clk=0;
		   #50
		read=1;write=0;clk=1;addr=1;
			#50;
		read=0;write=0;clk=0;
		   #50
		read=1;write=0;clk=1;addr=4;
			#50;
		read=0;write=0;clk=0;
		   #50;
		read=1;write=0;clk=1;addr=6;
			#50;
		read=0;write=0;clk=0;
		   #50
		read=1;write=0;clk=1;addr=7;
			#50;
		read=0;write=0;clk=0;
	end
      
endmodule

