`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:21 05/23/2019
// Design Name:   CPU
// Module Name:   E:/ISE/Term_PC/CPU/test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
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
	

	// Outputs
	wire [32:1] Output_Data;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.SW(SW), 
		.Output_Data(Output_Data)
	);

	initial begin
		// Initialize Inputs
		SW = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
SW[1] = 1;#10 SW[1]=0;#10
        
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10	// Add stimulus here
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10
SW[0]=1;#10 SW[0]= 0;#10		

SW[2]=1;#10;
	end
      
endmodule

