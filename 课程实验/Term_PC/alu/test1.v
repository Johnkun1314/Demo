`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:43:20 04/18/2019
// Design Name:   ALU
// Module Name:   E:/ISE/Term_PC/alu/test1.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg [3:0] OP;
	reg [32:1] A;
	reg [32:1] B;

	// Outputs
	wire [32:1] F;
	wire ZF;
	wire CF;
	wire OF;
	wire SF;
	wire PF;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.OP(OP), 
		.A(A), 
		.B(B), 
		.F(F), 
		.ZF(ZF), 
		.CF(CF), 
		.OF(OF), 
		.SF(SF), 
		.PF(PF)
	);

	initial begin
		// Initialize Inputs
		OP = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        A =32'h0000_0001;B=32'hffff_00ff;OP=4;
		// Add stimulus here

	end
      
endmodule

