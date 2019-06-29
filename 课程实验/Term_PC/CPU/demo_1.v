`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:39:53 05/22/2019
// Design Name:   CPU
// Module Name:   E:/ISE/Term_PC/CPU/demo_1.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demo_1;

	// Inputs
	reg SW;
	reg Clk;
	reg ALU_F;

	// Outputs
	wire [7:0] led;
	wire [2:0] which;
	wire shine;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.SW(SW), 
		.Clk(Clk), 
		.ALU_F(ALU_F), 
		.led(led), 
		.which(which), 
		.shine(shine)
	);

	initial begin
		// Initialize Inputs
		SW = 0;
		Clk = 0;
		ALU_F = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

