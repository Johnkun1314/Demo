`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:49:07 04/18/2019
// Design Name:   top
// Module Name:   E:/ISE/Term_PC/Regs/test.v
// Project Name:  Regs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
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
	reg [5:0] SW;
	reg Clk;
	reg [32:1] Input_Data;

	// Outputs
	wire [32:1] Output_Data;
	wire [2:0] which;
	wire [7:0] led;
	wire shine;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.SW(SW), 
		.Clk(Clk), 
		.Input_Data(Input_Data), 
		.Output_Data(Output_Data), 
		.which(which), 
		.led(led), 
		.shine(shine)
	);

	initial begin
		// Initialize Inputs
		SW = 0;
		Clk = 0;
		Input_Data = 0;

		// Wait 100 ns for global reset to finish
		#10;
      	Clk=0;SW[0] = 1;#50;Clk=1;SW[0] = 0;#50;
			
		Clk=1;Input_Data = 32'h0000_0000;#50;
      Clk=1;SW[1] = 1;#50;Clk=0;SW[1] = 0;#50;
		
		Input_Data = 32'hffff_ffff;
		Clk=1;SW[2] = 1;#50;Clk=0;SW[2] =0;#50;
		Clk=1;SW[3] = 1;#50;Clk=0;SW[3] =0;#50;
		
		Clk=1;Input_Data = 32'h004a_0f01;#50;
		Clk=1;SW[1] = 1;#50;Clk=0;SW[1] = 0;#50;
		
		Input_Data = 32'h0000_00f1;
		Clk=1;SW[2] = 1;#50;Clk=0;SW[2] =0;#50;
		Clk=1;SW[3] = 1;#50;Clk=0;SW[3] =0;#50;
		
		Clk=1;SW[4] = 1;#50;Clk=0;SW[4] =0;#50;
		
		Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;
		Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;Clk=1;#1;Clk=0;#1;

	end
      
endmodule

