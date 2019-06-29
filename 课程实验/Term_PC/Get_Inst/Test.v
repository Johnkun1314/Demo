

`timescale 1ns / 1ps
//�������ģ��
module Test(clk,clr,cls,Output_Data,shine,which,led);
    input  clk,clr,cls;
    output [32:1] Output_Data;
	 
	 output [2:0] which; //�˶�λ��
	 output [7:0] led;  //�˶�led
	 output reg shine;
    //ʵ����ģ��  
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

