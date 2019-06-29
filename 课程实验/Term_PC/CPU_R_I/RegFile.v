`timescale 1ns / 1ps
//�Ĵ�����ģ��
module RegFile(Clk,reset,Write_Reg,R_Addr_A,R_Addr_B,W_Addr,W_Data,R_Data_A,R_Data_B);
    parameter ADDR = 4;//�Ĵ�������/��ַλ��
    parameter NUM = 31;//�Ĵ�������
    parameter SIZE = 31;//�Ĵ�������λ��
    
    input Clk;//д��ʱ���ź�
    input reset;//�����ź�
    input Write_Reg;//д�����ź�
    input [ADDR:0]R_Addr_A;//A�˿ڶ��Ĵ�����ַ
    input [ADDR:0]R_Addr_B;//B�˿ڶ��Ĵ�����ַ
    input [ADDR:0]W_Addr;//д�Ĵ�����ַ
    input [SIZE:0]W_Data;//д������
    
    output [SIZE:0]R_Data_A;//A�˿ڶ�������
    output [SIZE:0]R_Data_B;//B�˿ڶ�������
    
    reg [SIZE:0]REG_Files[0:NUM];//�Ĵ����ѱ���
    integer i;//���ڱ���NUM���Ĵ���
    
    always@(posedge Clk)//ʱ���źŻ������ź�������
    begin
        if(reset)//����
                for(i=0;i<=NUM;i=i+1) REG_Files[i]<=0;
        else//������,���д����, �ߵ�ƽ��д��Ĵ���
		     if(W_Addr != 0) 
			     begin 
			       if(Write_Reg) REG_Files[W_Addr]<=W_Data;
			     end 
                
    end
    
    //������û��ʹ�ܻ�ʱ���źſ���, ʹ����������ģ(����߼���·,������Ҫʱ�ӿ���)
    assign R_Data_A=REG_Files[R_Addr_A];
    assign R_Data_B=REG_Files[R_Addr_B];

endmodule
