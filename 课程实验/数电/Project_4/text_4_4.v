`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:32 12/09/2018
// Design Name:   Demo_4
// Module Name:   E:/ISE/Project_4/text_4_4.v
// Project Name:  Project_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Demo_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module text_4_4;

	// Inputs
	reg [7:0] In;
	reg EN;

	// Outputs
	wire [2:0] Y;
	wire Done;

	// Instantiate the Unit Under Test (UUT)
	Demo_4 uut (
		.In(In), 
		.EN(EN), 
		.Y(Y), 
		.Done(Done)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		EN = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		EN=0;In=8'b00000000;
		#100;
		EN=0;In=8'b00000001;
		#100;
		EN=0;In=8'b00000010;
		#100;
		EN=0;In=8'b00000100;
		#100;
		EN=0;In=8'b00001000;
		#100;
		EN=0;In=8'b00010000;
		#100;
		EN=0;In=8'b00100000;
		#100;
		EN=0;In=8'b01000000;
		#100;
		EN=0;In=8'b10000000;

	end
      
endmodule

