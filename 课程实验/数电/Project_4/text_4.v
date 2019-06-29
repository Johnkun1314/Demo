`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:43:54 12/09/2018
// Design Name:   Demo_4
// Module Name:   E:/ISE/Project_4/text_4.v
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

module text_4;

	// Inputs
	reg EN;
	reg [7:0] In;

	// Outputs
	wire [2:0] Y;
	wire Done;

	// Instantiate the Unit Under Test (UUT)
	Demo_4 uut (
		.EN(EN), 
		.In(In), 
		.Y(Y), 
		.Done(Done)
	);

	initial begin
		// Initialize Inputs
		EN = 1;
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
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
     
	end
      
endmodule

