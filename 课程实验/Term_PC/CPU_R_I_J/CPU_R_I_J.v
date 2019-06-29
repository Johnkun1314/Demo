`timescale 1ns / 1ps

module CPU_R_I_J(SW,Output_Data,ALU_F);
	
	 parameter ADDR = 5;//地址位宽
    parameter SIZE = 32;//数据位宽

	 	 //输出数据
    output  [SIZE:1] Output_Data;
	 output [32:1] ALU_F;
	  
	  
	 //时钟clk
	 input [5:0] SW;

	 //指令地址
	 reg [SIZE:1] PC;
	 wire [SIZE:1] PC_new;
	 
	 wire [SIZE:1] ZOF;
    //寄存器堆地址
    reg [ADDR:1]R_Addr_A;//A读端口寄存器地址
    reg [ADDR:1]R_Addr_B;//B读端口寄存器地址n
    wire [ADDR:1]W_Addr;//写寄存器地址
	 wire [SIZE:1]W_Data;
	 
    wire [SIZE:1]R_Data_A;//A端口读出数据
    wire [SIZE:1]R_Data_B;//B端口读出数据 
	 
	  //ALU
     wire  [SIZE:1] ALU_F,ALU_B;
     wire  CF,//进借位标志
           SF,//符号标志
           PF,//奇偶标志uijm
			  ZF,//零标志
			  OF;//溢出标志
	  
	 //译码以及控制单元信号
	 wire Write_Reg;  //寄存器写入信号
    wire [3:0] ALU_OP;//运算符编码
	 wire Mem_Write,rt_imm_s,imm_s;
	 wire [1:0] PC_s,alu_mem_s,rd_rt_s;

	 //指令存储器
	 wire [SIZE:1] Inst_code,imm_data;
	 //数据存储器
	 wire [SIZE:1] M_W_Data,M_R_Data;
	 wire [6:1] Mem_Addr;
	 //指令类型
	 wire [6:1] OP;   //公用OP
	 wire [5:1] rs,rt,rd,shamt; //R型指令
	 wire [6:1] func;           //R型指令功能
	 wire [16:1] imm;   //
	
    //实例化寄存器堆模块
   RegFile RF_Test(
    .Clk(~SW[0]), 
    .reset(SW[1]), 
    .Write_Reg(Write_Reg), //译码控制给出
    .R_Addr_A(Inst_code[26:22]), 
    .R_Addr_B(Inst_code[21:17]), 
    .W_Addr(W_Addr), 
    .W_Data(W_Data), 
    .R_Data_A(R_Data_A), 
    .R_Data_B(R_Data_B)
    );  
        
	  //实例化ALU模块
    ALU ALU_Test(
        .OP(ALU_OP),//运算符  
        .A(R_Data_A),//A操作数
        .B(ALU_B),//B操作数
        .F(ALU_F),//ALU_F作为中间变量
        
        .ZF(ZF),//零标志
        .CF(CF),//进借位标志
        .OF(OF),//溢出标志
        .SF(SF),//符号标志
        .PF(PF)//奇偶标志
    );
	 
	 
	 //指令译码器
	 
	 yimaqi yimaqi (
    .Inst_code(Inst_code), 
    .OP(Inst_code[32:27]), 
    .func(Inst_code[6:1]), 
    .write_reg(Write_Reg), 
    .ALU_OP(ALU_OP), 
    .Mem_Write(Mem_Write), 
    .alu_mem_s(alu_mem_s),   //wr_data_s
    .rt_imm_s(rt_imm_s), 
    .imm_s(imm_s), 
    .rd_rt_s(rd_rt_s),  //w-r-s
    .PC_s(PC_s)
    );
	 //PC模块

	 Get_Inst get_inst(
    .inst_code(Inst_code), 
    .clk(SW[0]),
	 .PC(PC)
    );


	 
    //数据存储器
	 RAM_B RAM_B (
     .clka(SW[0]), // input clka
     .wea(Mem_Write), // input [0 : 0] wea
     .addra(ALU_F[6:1]), // input [5 : 0] addra
     .dina(M_W_Data), // input [31 : 0] dina
     .douta(M_R_Data) // output [31 : 0] douta
);
//	 assign Mem_Addr = ALU_F;
    assign W_Data = (alu_mem_s[1])?(PC_new):((alu_mem_s[0])?M_R_Data:ALU_F);
    assign M_W_Data = R_Data_B;	 
	 assign W_Addr = (rd_rt_s[1])?5'b11111:((rd_rt_s[0])?Inst_code[21:17]:Inst_code[16:12]);
	 assign imm_data = (imm_s)?{{16{Inst_code[16]}},Inst_code[16:1]}:{{16{1'b0}},Inst_code[16:1]};
	 assign ALU_B = (rt_imm_s)?imm_data:R_Data_B;
	 
    assign PC_new = PC+4;;
	 
	 assign Output_Data=W_Data;
//	always@(posedge SW[2] or posedge SW[3] or posedge SW[4])
	//begin  
	  //     if(SW[2]) begin Output_Data<=W_Data; end
	  //else if(SW[3]) begin Output_Data<={30'b0,OF,ZF}; end
	  //else if(SW[4]) begin Output_Data<=ALU_F; end
	//end
	
	
		 always@(negedge SW[0])  
	   begin 
		  if(SW[1]) begin PC<=0; end
		     else  begin  
                case(PC_s)
					    2'b00 : PC <=PC_new;
						 2'b01 : PC <=R_Data_A;
						 2'b10 : PC <=PC_new+(imm_data<<2);
						 2'b11 : PC <={PC_new[32:29],Inst_code[26:1],2'b00};
					 endcase
			  end
		end
endmodule

