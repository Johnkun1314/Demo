`timescale 1ns / 1ps
//取指令模块
module Get_Inst(clk,clr,cls,Output_Data,shine,which,led);
    input cls;//时钟
    input clr;//清零
    input clk;//
	 
	 output [32:1] Output_Data;//取出的指令 
	 output [2:0] which; //八段位置
	 output [7:0] led;  //八段led
	 output  reg shine = 1;
	
	  reg [31:0] PC;
	 //wire [31:0]PC_new;
	 wire [31:0]Inst_code;
	 
	 //assign PC_new = PC+4;
	 
	 always @(negedge cls) 
    begin
	 if(clr) begin  PC<=32'h00000000; end
	 else     begin PC <= PC + 4; end
	 end
	 
    //实例化模块

Inst_Rom your_instance_name (
  .clka(cls), // input clka
  .addra(PC[7:2]), // input [5 : 0] addra
  .douta(Output_Data) // output [31 : 0] douta
);
LedTube instance_name (
    .data(PC), 
    .clk(clk), 
    .which(which), 
    .led(led)
    );	 
	// assign Output_Data = Inst_code;
endmodule