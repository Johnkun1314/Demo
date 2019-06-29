`timescale 1ns / 1ps

module top(
      SW,Clk, //使能开关
		Input_Data, //数据输入
		Output_Data, //数据输出
		which,led,shine //数码管输出
  );
	 parameter ADDR = 5;//地址位宽
    parameter SIZE = 32;//数据位宽
	 //外部数据输入口
	 input [SIZE:1]Input_Data;
	 //按钮
	 input [5:0] SW;
	 //时钟clk
	 input Clk;
	 //led输出
	 output reg [SIZE:1] Output_Data;
	 //数码管输出
    output [2:0] which; //八段位置
	 output [7:0] led;  //八段led
	 output reg shine; //数码管使能开关
	 //数码管输入
	 reg [SIZE:1] Led_Data;
    //寄存器堆地址
    reg [ADDR:1]R_Addr_A;//A读端口寄存器地址
    reg [ADDR:1]R_Addr_B;//B读端口寄存器地址
    reg [ADDR:1]W_Addr;//写寄存器地址
	 reg [SIZE:1]W_Data;
	 
    wire [SIZE:1]R_Data_A;//A端口读出数据
    wire [SIZE:1]R_Data_B;//B端口读出数据 
	 
	 
    //实例化寄存器堆模块
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
       
	 //数码管显示
	 LedTube Out_LedTube (
    .data(Led_Data),  //数据
    .clk(Clk),    //时钟
    .which(which), //数码管位置
    .led(led)     //数值
    );
	 

	 	 always@(*)
	  begin 
	    shine<=1;
	     if(SW[1]) 
		  begin 
          W_Addr  <= Input_Data[5:1];  //保存寄存地址
			 R_Addr_A<= Input_Data[32:28]; //保存读取地址A
			 R_Addr_B<= Input_Data[27:23]; //保存读取地址B
		  end 
		  else if(SW[2])   //保存寄存数据
		   begin
           	W_Data<=Input_Data;		
			end 
			else if(SW[4])   //打印寄存数据
			 begin
			   Output_Data<=R_Data_A;
				   Led_Data<=R_Data_B;
			 end

	  end
endmodule
