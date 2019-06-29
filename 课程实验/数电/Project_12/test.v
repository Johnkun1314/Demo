`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:38 11/29/2018
// Design Name:   shiyan_12
// Module Name:   D:/FPGA/shiyan_12/test.v
// Project Name:  shiyan_12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_12
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
	reg mr;
	reg en;
	reg clk;

	// Outputs
	wire [3:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	shiyan_12 uut (
		.mr(mr), 
		.en(en), 
		.clk(clk), 
		.q(q), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		mr = 0;
		en = 1;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      mr = 1;
		en = 0;
		clk = 0;
		
		#100;
		mr = 1;
		en = 1;
		clk = 1;
		
		#100;
		mr = 1;
		en = 1;
		clk = 0;
		
		#100;
		mr = 1;
		en = 1;
		clk = 1;
		
		#100;
		mr = 1;
		en = 1;
		clk = 0;
		
		#100;
		mr = 1;
		en = 1;
		clk = 1;
	end
      
endmodule

