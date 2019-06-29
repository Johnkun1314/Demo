`timescale 1ns / 1ps

module text_7;

	// Inputs
	reg C0;
	reg Add_Sub;
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire C4;
	wire ZF;
	wire CF;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	Demo_7 uut (
		.C0(C0), 
		.Add_Sub(Add_Sub), 
		.A(A), 
		.B(B), 
		.C4(C4), 
		.ZF(ZF), 
		.CF(CF), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		C0 = 0;
		Add_Sub = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		A=4'b0000;B=4'b0001;Add_Sub=1;C0=1;
		#100;
		A=4'b1111;B=4'b0001;Add_Sub=1;C0=1;
		#100;
		A=4'b0011;B=4'b0001;Add_Sub=0;C0=1;
		#100;
		A=4'b0001;B=4'b0010;Add_Sub=0;C0=1;

	end
      
endmodule

