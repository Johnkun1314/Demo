`timescale 1ns / 1ps

module CPU(SW,Output_Data);
	
	 parameter ADDR = 5;//��ַλ��
    parameter SIZE = 32;//����λ��

	 	 //�������
    output reg [SIZE:1] Output_Data;
	
	 //ʱ��clk
	 input [5:0] SW;

	 //ָ���ַ
	 wire [SIZE:1] PC;
	 
	 wire [SIZE:1] ZOF;
    //�Ĵ����ѵ�ַ
    reg [ADDR:1]R_Addr_A;//A���˿ڼĴ�����ַ
    reg [ADDR:1]R_Addr_B;//B���˿ڼĴ�����ַ
    reg [ADDR:1]W_Addr;//д�Ĵ�����ַ
	 reg [SIZE:1]W_Data;
	 
    wire [SIZE:1]R_Data_A;//A�˿ڶ�������
    wire [SIZE:1]R_Data_B;//B�˿ڶ������� 
	 
	  //ALU
     wire  [SIZE:1] ALU_F;
     wire  CF,//����λ��־
           SF,//���ű�־
           PF,//��ż��־uijm
			  ZF,//���־
			  OF;//�����־
	 //�����Լ����Ƶ�Ԫ�ź�
	 wire Write_Reg;  //�Ĵ���д���ź�
    wire [3:0] ALU_OP;//���������

	 //ָ��洢��
	 wire [SIZE:1] Inst_code;
	 
	 //ָ������
	 wire [6:1] OP;   //����OP
	 wire [5:1] rs,rt,rd,shamt; //R��ָ��
	 wire [6:1] func;           //R��ָ���
	
    //ʵ�����Ĵ�����ģ��
   RegFile RF_Test(
    .Clk(~SW[0]), 
    .reset(SW[1]), 
    .Write_Reg(Write_Reg), //������Ƹ���
    .R_Addr_A(Inst_code[26:22]), 
    .R_Addr_B(Inst_code[21:17]), 
    .W_Addr(Inst_code[16:12]), 
    .W_Data(ALU_F), 
    .R_Data_A(R_Data_A), 
    .R_Data_B(R_Data_B)
    );  
        
	  //ʵ����ALUģ��
    ALU ALU_Test(
        .OP(ALU_OP),//�����  
        .A(R_Data_A),//A������
        .B(R_Data_B),//B������
        .F(ALU_F),//ALU_F��Ϊ�м����
        
        .ZF(ZF),//���־
        .CF(CF),//����λ��־
        .OF(OF),//�����־
        .SF(SF),//���ű�־
        .PF(PF)//��ż��־
    );
	 
	 
	 //ָ��������
    yimaqi yimaqi (
    .OP(Inst_code[32:27]), 
    .func(Inst_code[6:1]), 
    .write_reg(Write_Reg), 
    .ALU_OP(ALU_OP)
    );
	 //PCģ��

	 Get_Inst get_inst(
    .inst_code(Inst_code), 
    .clk(SW[0]), 
    .reset(SW[1]), 
    .PC(PC)
    );
	 
  // assign {OP,rs,rt,rd,shamt,func} = Inst_code;
    
	always@(posedge SW[2] or posedge SW[3])
	begin  
	       if(SW[2]) begin Output_Data<=ALU_F; end
	  else if(SW[3]) begin Output_Data<={30'b0,OF,ZF}; end
	end
endmodule
