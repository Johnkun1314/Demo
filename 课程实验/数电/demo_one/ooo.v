`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:59:53 03/11/2019
// Design Name:   demo_one
// Module Name:   E:/ISE/demo_one/ooo.v
// Project Name:  demo_one
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo_one
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ooo;

	// Inputs
	reg [4:0] x;
	reg [4:0] y;
	reg clk;
	reg rst_n;

	// Outputs
	wire [9:0] res;

	// Instantiate the Unit Under Test (UUT)
	demo_one uut (
		.x(x), 
		.y(y), 
		.clk(clk), 
		.rst_n(rst_n), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

