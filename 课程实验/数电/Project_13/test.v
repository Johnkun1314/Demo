`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:45 11/30/2018
// Design Name:   shiyan_13
// Module Name:   D:/FPGA/shiyan_13/test.v
// Project Name:  shiyan_13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan_13
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
	reg up_dn;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	shiyan_13 uut (
		.mr(mr), 
		.load(load), 
		.en(en), 
		.up_dn(up_dn), 
		.clk(clk), 
		.q(q), 
		.co(co), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		mr = 1;
		load = 1;
		en = 1;
		up_dn = 1;
		clk = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
       mr = 0;
		load = 0;
		en = 1;
		up_dn = 1;
		clk = 1;
		d = 3;
		
		#100;
		mr = 0;
		load = 1;
		en = 0;
		up_dn = 0;
		clk = 0;
		d = 1;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 0;
		clk = 1;
		d = 2;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 0;
		clk = 0;
		d = 4;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 0;
		clk = 1;
		d = 5;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 1;
		clk = 0;
		d = 1;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 1;
		clk = 1;
		d = 4;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 1;
		clk = 0;
		d = 7;
		
		#100;
		mr = 0;
		load = 1;
		en = 1;
		up_dn = 1;
		clk = 1;
		d = 1;
	end
      
endmodule

