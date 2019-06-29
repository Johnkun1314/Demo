`timescale 1ns / 1ps

module top(
      SW, //使能开关
		Input_Data, //数据输入
		Output_Data //数据输出
  );
	 parameter ADDR = 5;//地址位宽
    parameter SIZE = 32;//数据位宽
	 //外部数据输入口
	 input [SIZE:1]Input_Data;
	 //按钮
	 input [5:0] SW;
	 //led输出
	 output reg [SIZE:1] Output_Data;

    reg [SIZE:1]R_Data_A;//A端口
    reg [SIZE:1]R_Data_B;//B端口
	 
	 	    //ALU
    reg [3:0] OP;//运算符编码
    wire   ZF,//零标志
           CF,//进借位标志
           OF,//溢出标志
           SF,//符号标志
           PF;//奇偶标志
	 wire [SIZE:1]ALU_F;//ALU运算结果中间变量

	   //实例化ALU模块
    ALU ALU_Test(
        .OP(OP),//运算符  
        .A(R_Data_A),//A操作数
        .B(R_Data_B),//B操作数
        .F(ALU_F),//ALU_F作为中间变量
    
        .ZF(ZF),//零标志
        .CF(CF),//进借位标志
        .OF(OF),//溢出标志
        .SF(SF),//符号标志
        .PF(PF)//奇偶标志
    );
	 
 always@(*)
	  begin 
	     if(SW[1]) 
		  begin 
			 R_Data_A<= Input_Data; 

		  end 
		   if(SW[2])   //保存寄存数据
		   begin
           	R_Data_B<= Input_Data; 		
			end 
			if(SW[3])   
			 begin
			   OP <= Input_Data[4:1];  ////保存操作符号
			 end
			 if(SW[4])   //打印云算结果
			   begin 
			      Output_Data<= ALU_F;   //运算结果
				   
			   end
				if(SW[5])   //打印云算结果
			   begin 
			      Output_Data<= {27'b0,ZF,CF,OF,SF,PF};  //运算标志符
				   
			   end
	  end
endmodule
