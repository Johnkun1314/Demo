`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:52 12/24/2018
// Design Name:   led
// Module Name:   E:/ISE/Priject_led/texttt.v
// Project Name:  Priject_led
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module texttt;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	led uut (
		.clk(clk), 
		.led(led), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		#10;clk=1;rst=0;
		#10;clk=0;rst=0;
		// Add stimulus here

	end
      
endmodule

