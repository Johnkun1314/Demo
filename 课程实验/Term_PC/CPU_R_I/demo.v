`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:38 05/30/2019
// Design Name:   CPU_R_I
// Module Name:   E:/ISE/Term_PC/CPU_R_I/demo.v
// Project Name:  CPU_R_I
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_R_I
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demo;

	// Inputs
	reg [5:0] SW;

	// Outputs
	wire [32:1] Output_Data;

	// Instantiate the Unit Under Test (UUT)
	CPU_R_I uut (
		.SW(SW), 
		.Output_Data(Output_Data)
	);
	
	always #1 SW[0]=~SW[0];


	initial begin
		// Initialize Inputs
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

SW[1] = 1;#10;SW[1]=0;#10;
	end
      
endmodule

