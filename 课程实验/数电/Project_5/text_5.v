`timescale 1ns / 1ps

module text_5;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [2:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Demo_5 uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
      #10;
		A=8;B=7;
		#10;
		A=5;B=7;
		#10;
		A=1;B=1;
	end
      
endmodule

