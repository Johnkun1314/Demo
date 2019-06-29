`timescale 1ns / 1ps



module text_6;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c0;

	// Outputs
	wire c4;
	wire [3:0] f;

	// Instantiate the Unit Under Test (UUT)
	Demo_6 uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.c4(c4), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      #100;
		a=4'b0000;b=4'b0001;c0=1;
		#100;
		a=4'b0001;b=4'b0001;c0=1;
		#100;
		a=4'b1111;b=4'b0001;c0=1;
	end
      
endmodule

