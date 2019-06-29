`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:36:22 11/26/2018
// Design Name:   shiyan_9
// Module Name:   D:/FPGA/shiyan_9/test.v
// Project Name:  shiyan_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_9
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
	reg pre;
	reg clr;
	reg clk;
	reg d;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	shiyan_9 uut (
		.pre(pre), 
		.clr(clr), 
		.clk(clk), 
		.d(d), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		pre = 1;
		clr = 0;
		clk = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		pre = 0;
		clr = 1;
		clk = 1;
		d = 0;
		
		#100;
		pre = 1;
		clr = 1;
		clk = 0;
		d = 1;
		
		#100;
		pre = 1;
		clr = 1;
		clk = 1;
		d = 0;
		
		#100;
		pre = 0;
		clr = 0;
		clk = 0;
		d = 1;
		
		#100;
		pre = 0;
		clr = 0;
		clk = 1;
		d = 0;
		
		
	end
      
endmodule

