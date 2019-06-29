`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:11 05/23/2019
// Design Name:   Get_Inst
// Module Name:   E:/ISE/Term_PC/CPU/getinit.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Get_Inst
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module getinit;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] inst_code;
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	Get_Inst uut (
		.inst_code(inst_code), 
		.clk(clk), 
		.reset(reset), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
clk = 1;
		reset = 0;#10;
		clk = 0;reset=1;#10;
		reset=0;#10;
		clk =1;#10;clk=0;#10;
		clk =1;#10;clk=0;#10;
		clk =1;#10;clk=0;#10;
		clk =1;#10;clk=0;#10;
		clk =1;#10;clk=0;#10;
		clk =1;#10;clk=0;#10;
	end
      
endmodule

