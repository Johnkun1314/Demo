`timescale 1ns / 1ps
//�Ĵ�����ģ��
module RegFile(Clk,reset,R_Addr_A,R_Addr_B,W_Addr,W_Data,R_Data_A,R_Data_B);
    parameter ADDR = 5;//�Ĵ�������/��ַλ��
    parameter NUM = 32;//�Ĵ�������
    parameter SIZE = 32;//�Ĵ�������λ��
    
    input Clk;//д��ʱ���ź�
    input reset;//�����ź�
    
    input [ADDR:1]R_Addr_A;//A�˿ڶ��Ĵ�����ַ
    input [ADDR:1]R_Addr_B;//B�˿ڶ��Ĵ�����ַ
    input [ADDR:1]W_Addr;//д�Ĵ�����ַ
    input [SIZE:1]W_Data;//д������
    
    output [SIZE:1]R_Data_A;//A�˿ڶ�������
    output [SIZE:1]R_Data_B;//B�˿ڶ�������
    
    reg [SIZE:1]REG_Files[0:NUM];//�Ĵ����ѱ���
    integer i;//���ڱ���NUM���Ĵ���
    
    initial//��ʼ��NUM���Ĵ�����ȫΪ0
        for(i=0;i<NUM;i=i+1) REG_Files[i]<=0;
    always@(posedge Clk or posedge reset)//ʱ���źŻ������ź�������
    begin
        if(reset)//����
                for(i=0;i<NUM;i=i+1) REG_Files[i]<=0;
			if(W_Addr != 0) begin REG_Files[W_Addr]<=W_Data; end
                
    end
    
    //������û��ʹ�ܻ�ʱ���źſ���, ʹ����������ģ(����߼���·,������Ҫʱ�ӿ���)
    assign R_Data_A=REG_Files[R_Addr_A];
    assign R_Data_B=REG_Files[R_Addr_B];

endmodule
