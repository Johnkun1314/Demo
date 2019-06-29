`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:52:23 12/01/2018
// Design Name:   shiyan_15
// Module Name:   D:/FPGA/shiyan_15/test.v
// Project Name:  shiyan_15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_15
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg oe;
	reg [1:0] s;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	shiyan_15 uut (
		.oe(oe), 
		.s(s), 
		.clk(clk), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		oe = 1;
		s = 0;
		clk = 0;
		d = 4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      oe = 0;
		s = 2'b11;
		clk = 1;
		d = 4;
		
		#100;
		oe = 0;
		s = 2'b10;
		clk =0;
		
		#100;
		oe = 0;
		s = 2'b01;
		clk =1;

		
		#100;
		oe = 0;
		s = 2'b01;
		clk = 0;
      
	  #100;
		oe = 0;
		s = 2'b01;
		clk =1;
		


		
		
		
	end
      
endmodule

