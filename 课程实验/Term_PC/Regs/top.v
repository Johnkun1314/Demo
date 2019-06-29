`timescale 1ns / 1ps

module top(
      SW,Clk, //ʹ�ܿ���
		Input_Data, //��������
		Output_Data, //�������
		which,led,shine //��������
  );
	 parameter ADDR = 5;//��ַλ��
    parameter SIZE = 32;//����λ��
	 //�ⲿ���������
	 input [SIZE:1]Input_Data;
	 //��ť
	 input [5:0] SW;
	 //ʱ��clk
	 input Clk;
	 //led���
	 output reg [SIZE:1] Output_Data;
	 //��������
    output [2:0] which; //�˶�λ��
	 output [7:0] led;  //�˶�led
	 output reg shine; //�����ʹ�ܿ���
	 //���������
	 reg [SIZE:1] Led_Data;
    //�Ĵ����ѵ�ַ
    reg [ADDR:1]R_Addr_A;//A���˿ڼĴ�����ַ
    reg [ADDR:1]R_Addr_B;//B���˿ڼĴ�����ַ
    reg [ADDR:1]W_Addr;//д�Ĵ�����ַ
	 reg [SIZE:1]W_Data;
	 
    wire [SIZE:1]R_Data_A;//A�˿ڶ�������
    wire [SIZE:1]R_Data_B;//B�˿ڶ������� 
	 
	 
    //ʵ�����Ĵ�����ģ��
   RegFile RF_Test(
    .Clk(Clk), 
    .reset(SW[0]), 
    .Write_Reg(SW[3]), 
    .R_Addr_A(R_Addr_A), 
    .R_Addr_B(R_Addr_B), 
    .W_Addr(W_Addr), 
    .W_Data(W_Data), 
    .R_Data_A(R_Data_A), 
    .R_Data_B(R_Data_B)
    );  
       
	 //�������ʾ
	 LedTube Out_LedTube (
    .data(Led_Data),  //����
    .clk(Clk),    //ʱ��
    .which(which), //�����λ��
    .led(led)     //��ֵ
    );
	 

	 	 always@(*)
	  begin 
	    shine<=1;
	     if(SW[1]) 
		  begin 
          W_Addr  <= Input_Data[5:1];  //����Ĵ��ַ
			 R_Addr_A<= Input_Data[32:28]; //�����ȡ��ַA
			 R_Addr_B<= Input_Data[27:23]; //�����ȡ��ַB
		  end 
		  else if(SW[2])   //����Ĵ�����
		   begin
           	W_Data<=Input_Data;		
			end 
			else if(SW[4])   //��ӡ�Ĵ�����
			 begin
			   Output_Data<=R_Data_A;
				   Led_Data<=R_Data_B;
			 end

	  end
endmodule
