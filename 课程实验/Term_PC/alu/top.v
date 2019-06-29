`timescale 1ns / 1ps

module top(
      SW, //ʹ�ܿ���
		Input_Data, //��������
		Output_Data //�������
  );
	 parameter ADDR = 5;//��ַλ��
    parameter SIZE = 32;//����λ��
	 //�ⲿ���������
	 input [SIZE:1]Input_Data;
	 //��ť
	 input [5:0] SW;
	 //led���
	 output reg [SIZE:1] Output_Data;

    reg [SIZE:1]R_Data_A;//A�˿�
    reg [SIZE:1]R_Data_B;//B�˿�
	 
	 	    //ALU
    reg [3:0] OP;//���������
    wire   ZF,//���־
           CF,//����λ��־
           OF,//�����־
           SF,//���ű�־
           PF;//��ż��־
	 wire [SIZE:1]ALU_F;//ALU�������м����

	   //ʵ����ALUģ��
    ALU ALU_Test(
        .OP(OP),//�����  
        .A(R_Data_A),//A������
        .B(R_Data_B),//B������
        .F(ALU_F),//ALU_F��Ϊ�м����
    
        .ZF(ZF),//���־
        .CF(CF),//����λ��־
        .OF(OF),//�����־
        .SF(SF),//���ű�־
        .PF(PF)//��ż��־
    );
	 
 always@(*)
	  begin 
	     if(SW[1]) 
		  begin 
			 R_Data_A<= Input_Data; 

		  end 
		   if(SW[2])   //����Ĵ�����
		   begin
           	R_Data_B<= Input_Data; 		
			end 
			if(SW[3])   
			 begin
			   OP <= Input_Data[4:1];  ////�����������
			 end
			 if(SW[4])   //��ӡ������
			   begin 
			      Output_Data<= ALU_F;   //������
				   
			   end
				if(SW[5])   //��ӡ������
			   begin 
			      Output_Data<= {27'b0,ZF,CF,OF,SF,PF};  //�����־��
				   
			   end
	  end
endmodule
