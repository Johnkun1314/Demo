`timescale 1ns / 1ps



module mul_test;

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
		x = 25;
		y = 25;
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;clk = 1;rst_n=1;


		// Add stimulus here

	end
      
endmodule

