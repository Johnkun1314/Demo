`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:20 12/09/2018
// Design Name:   text_2
// Module Name:   E:/ISE/Project_2/demo_2.v
// Project Name:  Project_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: text_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demo_2;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] C;
	reg [1:0] D;
	reg [1:0] S;
	reg EN;

	// Outputs
	wire [1:0] Y;

	// Instantiate the Unit Under Test (UUT)
	text_2 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.S(S), 
		.EN(EN), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
			A[1] = 0;
		A[0]=0;
		B[1]= 0;
		B[0]=1;
		C[1] = 1;
		C[0]=0;
		D[1]= 1;
		D[0]=1;
		S = 0;
		EN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		EN=1;S[1]=0;S[0]=0;
		#100;
		EN=1;S[1]=0;S[0]=1;
		#100;
		EN=1;S[1]=1;S[0]=0;
      #100;
		EN=1;S[1]=1;S[0]=1;
	end
      
endmodule

