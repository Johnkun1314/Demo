`timescale 1ns / 1ps
//ȡָ��ģ��
module Get_Inst(clk,clr,cls,Output_Data,shine,which,led);
    input cls;//ʱ��
    input clr;//����
    input clk;//
	 
	 output [32:1] Output_Data;//ȡ����ָ�� 
	 output [2:0] which; //�˶�λ��
	 output [7:0] led;  //�˶�led
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
	 
    //ʵ����ģ��

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