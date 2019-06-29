`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:51:24 11/30/2018
// Design Name:   shiyan_14
// Module Name:   D:/FPGA/shiyan_14/test.v
// Project Name:  shiyan_14
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_14
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
	reg clr;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	shiyan_14 uut (
		.oe(oe), 
		.clr(clr), 
		.clk(clk), 
		.q(q), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		oe = 0;
		clr = 1;
		clk = 0;
		d = 4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
       oe = 0;
		clr = 0;
		clk = 1;
		d = 5;
		
		#100;
		oe = 0;
		clr = 0;
		clk = 0;
		d = 3;
		
		#100;
		oe = 0;
		clr = 1;
		clk = 1;
		d = 7;
		
		#100;
		oe = 1;
		clr = 1;
		clk = 0;
		d = 1;
		
		#100;
		oe = 1;
		clr = 1;
		clk = 1;
		d = 8;
	end
      
endmodule

