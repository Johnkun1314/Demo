`timescale 1ns / 1ps

module TOP(SW,Clk, //ʹ�ܿ���
		Output_Data, //�������
		which,led,shine //��������
    );

    output [2:0] which; //�˶�λ��
	 output [7:0] led;  //�˶�led
	 output reg shine = 1;; //�����ʹ�ܿ���
	 
	 
	 	 //�������ʾ
	 LedTube Out_LedTube (
    .data(PC),  //����
    .clk(Clk),    //ʱ��
    .which(which), //�����λ��
    .led(led)     //��ֵ
    );
endmodule
