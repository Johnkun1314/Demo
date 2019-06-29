`timescale 1ns / 1ps



module demo;

	// Inputs
	reg [5:0] SW;

	// Outputs
	wire [32:1] Output_Data;
	wire [32:1] ALU_F;

	// Instantiate the Unit Under Test (UUT)
	CPU_R_I_J uut (
		.SW(SW), 
		.Output_Data(Output_Data), 
		.ALU_F(ALU_F)
	);
always #10 SW[0]=~SW[0];

	initial begin
		// Initialize Inputs
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
 SW[1] = 1;#10; SW[1] =0;#10;
	end
      
endmodule

