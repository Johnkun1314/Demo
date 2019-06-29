`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:04:49 03/11/2019
// Design Name:   demo_one
// Module Name:   E:/ISE/demo_one/test.v
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

module test;

	// Inputs
	reg [7:0] x;
	reg [7:0] y;
	reg clk;

	// Outputs
	wire [7:0] res;

	// Instantiate the Unit Under Test (UUT)
	demo_one uut (
		.x(x), 
		.y(y), 
		.clk(clk), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		x = 2'b00000010;
		y = 2'b00000010;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk=1;
		#100;
		clk=0;
        #100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;#100;
		clk=1;
		#100;
		clk=0;
		// Add stimulus here

	end
      
endmodule

