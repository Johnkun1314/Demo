`timescale 1ns / 1ps
//寄存器堆模块
module RegFile(Clk,reset,R_Addr_A,R_Addr_B,W_Addr,W_Data,R_Data_A,R_Data_B);
    parameter ADDR = 5;//寄存器编码/地址位宽
    parameter NUM = 32;//寄存器个数
    parameter SIZE = 32;//寄存器数据位宽
    
    input Clk;//写入时钟信号
    input reset;//清零信号
    
    input [ADDR:1]R_Addr_A;//A端口读寄存器地址
    input [ADDR:1]R_Addr_B;//B端口读寄存器地址
    input [ADDR:1]W_Addr;//写寄存器地址
    input [SIZE:1]W_Data;//写入数据
    
    output [SIZE:1]R_Data_A;//A端口读出数据
    output [SIZE:1]R_Data_B;//B端口读出数据
    
    reg [SIZE:1]REG_Files[0:NUM];//寄存器堆本体
    integer i;//用于遍历NUM个寄存器
    
    initial//初始化NUM个寄存器，全为0
        for(i=0;i<NUM;i=i+1) REG_Files[i]<=0;
    always@(posedge Clk or posedge reset)//时钟信号或清零信号上升沿
    begin
        if(reset)//清零
                for(i=0;i<NUM;i=i+1) REG_Files[i]<=0;
			if(W_Addr != 0) begin REG_Files[W_Addr]<=W_Data; end
                
    end
    
    //读操作没有使能或时钟信号控制, 使用数据流建模(组合逻辑电路,读不需要时钟控制)
    assign R_Data_A=REG_Files[R_Addr_A];
    assign R_Data_B=REG_Files[R_Addr_B];

endmodule
