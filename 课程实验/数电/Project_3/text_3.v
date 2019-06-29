`timescale 1ns / 1ps


module text_3;

	// Inputs
	reg G1;
	reg G2A;
	reg G2B;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	project3 uut (
		.G1(G1), 
		.G2A(G2A), 
		.G2B(G2B), 
		.C(C), 
		.B(B), 
		.A(A), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		G1 = 0;
		G2A = 0;
		G2B = 0;
		C = 0;
		B = 0;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      #100;
		G1 = 1;G2A = 0;G2B = 0;C = 1;B = 1;A = 1;
		#100;
		G1 = 1;G2A = 0;G2B = 0;C = 0;B = 0;A = 0;
		#100;
		G1 = 1;G2A = 0;G2B = 0;C = 1;B = 1;A = 0;
	end
      
endmodule

