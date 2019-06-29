

`timescale 1ns / 1ps
//¶¥²ã²âÊÔÄ£¿é
module Test(clk,clr,cls,Output_Data,shine,which,led);
    input  clk,clr,cls;
    output [32:1] Output_Data;
	 
	 output [2:0] which; //°Ë¶ÎÎ»ÖÃ
	 output [7:0] led;  //°Ë¶Îled
	 output reg shine;
    //ÊµÀý»¯Ä£¿é  
  Get_Inst Get_Inst (
    .clk(clk), 
    .clr(clr),
    .PC(PC),	 
    .Inst_code(Inst_code)
    );
	 
	 
// Instantiate the module
LedTube ledtube (
    .data(PC), 
    .clk(cls), 
    .which(which), 
    .led(led)
    );

	 assign shine =1;
	 assign Output_Data =Inst_code;
endmodule

