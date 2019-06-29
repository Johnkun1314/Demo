`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:44 03/24/2019
// Design Name:   fulladder
// Module Name:   E:/ISE/Term_PC/FullAdder/test_fulladder.v
// Project Name:  FullAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fulladder;

	// Inputs
	reg a;
	reg b;
	reg c0;

	// Outputs
	wire c1;
	wire f;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.c1(c1), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b=1;
		c0 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

