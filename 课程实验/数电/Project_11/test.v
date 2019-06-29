`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:22:42 11/28/2018
// Design Name:   shiyan_11
// Module Name:   D:/FPGA/shiyan_11/test.v
// Project Name:  shiyan_11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_11
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
	reg load;
	reg en;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	shiyan_11 uut (
		.mr(mr), 
		.load(load), 
		.en(en), 
		.clk(clk), 
		.q(q), 
		.d(d), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		mr = 0;
		load = 1;
		en = 1;
		clk = 1;
		d = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      mr = 1;
		load = 0;
		en = 1;
		clk = 1;
		d = 1;
		
		#100;
		mr = 1;
		load = 1;
		en = 0;
		clk = 1;
		d = 1;
		
		#100;
		mr = 1;
		load = 1;
		en = 1;
		clk = 0;
		d = 1;
		
		#100;
		mr = 1;
		load = 1;
		en = 1;
		clk = 1;
		d = 1;
		
		#100;
		mr = 1;
		load = 1;
		en = 1;
		clk = 0;
		d = 1;
		
		#100;
		mr = 1;
		load = 1;
		en = 1;
		clk = 1;
		d = 1;
	end
      
endmodule

