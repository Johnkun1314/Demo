`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:18:18 04/17/2019
// Design Name:   testmodule
// Module Name:   E:/ISE/Term_PC/Storage/test.v
// Project Name:  Storage
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: testmodule
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
	reg [32:1] Data_Input;
	reg [6:1] SW;

	// Outputs
	wire [32:1] Data_Output;

	// Instantiate the Unit Under Test (UUT)
	testmodule uut (
		.Data_Input(Data_Input), 
		.Data_Output(Data_Output), 
		.SW(SW)
	);

	initial begin
		// Initialize Inputs
		Data_Input = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Data_Input = 32'h0000_0000;SW[1]=1;#50;
		SW[1]=0;#50;
		Data_Input = 32'h0000_0001;SW[1]=1;#50;
		SW[1]=0;#50;
		Data_Input = 32'h0000_0002;SW[1]=1;#50;
		SW[1]=0;#50;
		Data_Input = 32'h0000_0003;SW[1]=1;#50;
		SW[1]=0;#50;
		// Add stimulus here

	end
      
endmodule

