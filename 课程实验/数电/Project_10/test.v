`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:09:59 11/28/2018
// Design Name:   shiyan_10
// Module Name:   D:/FPGA/shiyan_10/test.v
// Project Name:  shiyan_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_10
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
	reg clk;
	reg j;
	reg k;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	shiyan_10 uut (
		.clk(clk), 
		.j(j), 
		.k(k), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		clk <= 1;
		j <= 0;
		k <= 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      clk <= 1;
		j <= 0;
		k <= 1;
		
		#100;
		clk <= 1;
		j <= 1;
		k <= 0;
		
		#100;
		clk <= 1;
		j <= 1;
		k <= 1;
		
	end
      
endmodule

