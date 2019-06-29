`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:34:53 12/18/2018
// Design Name:   led
// Module Name:   E:/ISE/Priject_led/text.v
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

module text;

	// Inputs
	reg [1:0] sw;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	led uut (
		.sw(sw), 
		.clk(clk), 
		.led(led), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		sw = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
      #10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		#10; sw=0;clk=1;rst=0;#10; sw=0;clk=0;rst=0;
		// Add stimulus here

	end
      
endmodule

