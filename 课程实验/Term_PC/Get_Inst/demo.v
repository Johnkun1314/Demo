`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:46 05/09/2019
// Design Name:   Get_Inst
// Module Name:   E:/ISE/Term_PC/Get_Inst/demo.v
// Project Name:  Get_Inst
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

module demo;

	// Inputs
	reg clk;
	reg clr;
	reg cls;

	// Outputs
	wire [32:1] Output_Data;
	wire shine;
	wire [2:0] which;
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	Get_Inst uut (
		.clk(clk), 
		.clr(clr), 
		.cls(cls), 
		.Output_Data(Output_Data), 
		.shine(shine), 
		.which(which), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		cls = 0;
    
		// Wait 100 ns for global reset to finish
		#100;
       cls= 1;#10;
		 clr = 1;#10;
		 cls = 0;#10;
		 clr = 0;#10;
		 cls =1;#10; cls = 0;#10;
		 cls =1;#10; cls = 0;#10;
		 cls =1;#10; cls = 0;#10;
		 cls =1;#10; cls = 0;#10;cls =1;#10; cls = 0;#10;
		 cls =1;#10; cls = 0;#10;
		 cls =1;#10; cls = 0;#10;
		 cls =1;#10; cls = 0;#10;
		// Add stimulus here


									
	end
      
endmodule

