`timescale 1ns / 1ps

module CPU_R_I(SW,Output_Data);
	
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
    wire [ADDR:1]W_Addr;//д�Ĵ�����ַ
	 wire [SIZE:1]W_Data;
	 
    wire [SIZE:1]R_Data_A;//A�˿ڶ�������
    wire [SIZE:1]R_Data_B;//B�˿ڶ������� 
	 
	  //ALU
     wire  [SIZE:1] ALU_F,ALU_B;
     wire  CF,//����λ��־
           SF,//���ű�־
           PF,//��ż��־uijm
			  ZF,//���־
			  OF;//�����־
	  
	 //�����Լ����Ƶ�Ԫ�ź�
	 wire Write_Reg;  //�Ĵ���д���ź�
    wire [3:0] ALU_OP;//���������
	 wire Mem_Write,alu_mem_s,rt_imm_s,imm_s,rd_rt_s;

	 //ָ��洢��
	 wire [SIZE:1] Inst_code,imm_data;
	 //���ݴ洢��
	 wire [SIZE:1] M_W_Data,M_R_Data;
	 wire [6:1] Mem_Addr;
	 //ָ������
	 wire [6:1] OP;   //����OP
	 wire [5:1] rs,rt,rd,shamt; //R��ָ��
	 wire [6:1] func;           //R��ָ���
	 wire [16:1] imm;   //
	
    //ʵ�����Ĵ�����ģ��
   RegFile RF_Test(
    .Clk(~SW[0]), 
    .reset(SW[1]), 
    .Write_Reg(Write_Reg), //������Ƹ���
    .R_Addr_A(Inst_code[26:22]), 
    .R_Addr_B(Inst_code[21:17]), 
    .W_Addr(W_Addr), 
    .W_Data(W_Data), 
    .R_Data_A(R_Data_A), 
    .R_Data_B(R_Data_B)
    );  
        
	  //ʵ����ALUģ��
    ALU ALU_Test(
        .OP(ALU_OP),//�����  
        .A(R_Data_A),//A������
        .B(ALU_B),//B������
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
    .ALU_OP(ALU_OP), 
    .Mem_Write(Mem_Write), 
    .alu_mem_s(alu_mem_s), 
    .rt_imm_s(rt_imm_s), 
    .imm_s(imm_s), 
    .rd_rt_s(rd_rt_s)
    );
	 //PCģ��

	 Get_Inst get_inst(
    .inst_code(Inst_code), 
    .clk(SW[0]), 
    .reset(SW[1]), 
    .PC(PC)
    );
	 
    //���ݴ洢��
	 RAM_A RAM_A (
     .clka(SW[0]), // input clka
     .wea(Mem_Write), // input [0 : 0] wea
     .addra(ALU_F[6:1]), // input [5 : 0] addra
     .dina(M_W_Data), // input [31 : 0] dina
     .douta(M_R_Data) // output [31 : 0] douta
);
	 assign Mem_Addr = ALU_F;
    assign W_Data = alu_mem_s?M_R_Data:ALU_F;
    assign M_W_Data = R_Data_B;	 
	 assign W_Addr = (rd_rt_s)?Inst_code[21:17]:Inst_code[16:12];
	 assign imm_data = (imm_s)?{{16{Inst_code[16]}},Inst_code[16:1]}:{{16{1'b0}},Inst_code[16:1]};
	 assign ALU_B = (rt_imm_s)?imm_data:R_Data_B;
	 
   //  assign	  Output_Data=W_Data;
	always@(posedge SW[2] or posedge SW[3])
	begin  
	       if(SW[2]) begin Output_Data<=W_Data; end
	  else if(SW[3]) begin Output_Data<={30'b0,OF,ZF}; end
	  else if(SW[4]) begin Output_Data<=ALU_F; end
	end
endmodule
