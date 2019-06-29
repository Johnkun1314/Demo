`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:59:07 04/18/2019
// Design Name:   top
// Module Name:   E:/ISE/Term_PC/alu/test.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
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
	reg [32:1] Input_Data;

	// Outputs
	wire [32:1] Output_Data;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.SW(SW), 
		.Input_Data(Input_Data), 
		.Output_Data(Output_Data)
	);

	initial begin
		// Initialize Inputs
		SW = 0;
		Input_Data = 0;

		// Wait 100 ns for global reset to finish
				#10;
		//按位与
		Input_Data = 32'h0001_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'h0001_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0000;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		
		//按位或
		Input_Data = 32'h0001_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'h0001_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0001;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		//按位异或
	   Input_Data = 32'h0001_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'h0001_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0002;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		//按位或非
		Input_Data = 32'h0001_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'h0001_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0003;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		//加法
		Input_Data = 32'hfff1_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'h0001_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0004;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		//减法
		Input_Data = 32'h0001_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'hfff1_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0005;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		//A<B则F=1，否则F=0
		Input_Data = 32'h0001_ffff;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'h0001_000f;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0006;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
		//将B左移A位
      Input_Data = 32'h0000_0004;SW[1] =1;#10;SW[1]=0;#10;
      Input_Data = 32'hffff_ffff;SW[2] =1;#10;SW[2]=0;#10;
		Input_Data = 32'h0000_0007;SW[3] =1;#10;SW[3]=0;#10;
                                 SW[4] =1;#10;SW[4]=0;#10;
                                 SW[5] =1;#10;SW[5]=0;#10;
	end
      
endmodule

