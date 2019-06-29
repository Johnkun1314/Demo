`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:10:05 11/26/2018
// Design Name:   Demo_8
// Module Name:   E:/ISE/Project_8/text_8.v
// Project Name:  Project_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Demo_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module text_8;

	// Inputs
	reg S;
	reg R;

	// Outputs
	wire Q1;
	wire Q2;

	// Instantiate the Unit Under Test (UUT)
	Demo_8 uut (
		.S(S), 
		.R(R), 
		.Q1(Q1), 
		.Q2(Q2)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#100;
		S = 1;
		R = 0;
		
		#100;
		S = 0;
		R = 0;
				#100;
		S = 0;
		R = 1;
				#100;
		S = 1;
		R = 1;


	end
      
endmodule

