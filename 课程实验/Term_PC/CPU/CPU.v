`timescale 1ns / 1ps

module CPU(SW,Output_Data);
	
	 parameter ADDR = 5;//地址位宽
    parameter SIZE = 32;//数据位宽

	 	 //输出数据
    output reg [SIZE:1] Output_Data;
	
	 //时钟clk
	 input [5:0] SW;

	 //指令地址
	 wire [SIZE:1] PC;
	 
	 wire [SIZE:1] ZOF;
    //寄存器堆地址
    reg [ADDR:1]R_Addr_A;//A读端口寄存器地址
    reg [ADDR:1]R_Addr_B;//B读端口寄存器地址
    reg [ADDR:1]W_Addr;//写寄存器地址
	 reg [SIZE:1]W_Data;
	 
    wire [SIZE:1]R_Data_A;//A端口读出数据
    wire [SIZE:1]R_Data_B;//B端口读出数据 
	 
	  //ALU
     wire  [SIZE:1] ALU_F;
     wire  CF,//进借位标志
           SF,//符号标志
           PF,//奇偶标志uijm
			  ZF,//零标志
			  OF;//溢出标志
	 //译码以及控制单元信号
	 wire Write_Reg;  //寄存器写入信号
    wire [3:0] ALU_OP;//运算符编码

	 //指令存储器
	 wire [SIZE:1] Inst_code;
	 
	 //指令类型
	 wire [6:1] OP;   //公用OP
	 wire [5:1] rs,rt,rd,shamt; //R型指令
	 wire [6:1] func;           //R型指令功能
	
    //实例化寄存器堆模块
   RegFile RF_Test(
    .Clk(~SW[0]), 
    .reset(SW[1]), 
    .Write_Reg(Write_Reg), //译码控制给出
    .R_Addr_A(Inst_code[26:22]), 
    .R_Addr_B(Inst_code[21:17]), 
    .W_Addr(Inst_code[16:12]), 
    .W_Data(ALU_F), 
    .R_Data_A(R_Data_A), 
    .R_Data_B(R_Data_B)
    );  
        
	  //实例化ALU模块
    ALU ALU_Test(
        .OP(ALU_OP),//运算符  
        .A(R_Data_A),//A操作数
        .B(R_Data_B),//B操作数
        .F(ALU_F),//ALU_F作为中间变量
        
        .ZF(ZF),//零标志
        .CF(CF),//进借位标志
        .OF(OF),//溢出标志
        .SF(SF),//符号标志
        .PF(PF)//奇偶标志
    );
	 
	 
	 //指令译码器
    yimaqi yimaqi (
    .OP(Inst_code[32:27]), 
    .func(Inst_code[6:1]), 
    .write_reg(Write_Reg), 
    .ALU_OP(ALU_OP)
    );
	 //PC模块

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
