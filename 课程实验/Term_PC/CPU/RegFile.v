`timescale 1ns / 1ps
//寄存器堆模块
module RegFile(Clk,reset,Write_Reg,R_Addr_A,R_Addr_B,W_Addr,W_Data,R_Data_A,R_Data_B);
    parameter ADDR = 4;//寄存器编码/地址位宽
    parameter NUM = 31;//寄存器个数
    parameter SIZE = 31;//寄存器数据位宽
    
    input Clk;//写入时钟信号
    input reset;//清零信号
    input Write_Reg;//写控制信号
    input [ADDR:0]R_Addr_A;//A端口读寄存器地址
    input [ADDR:0]R_Addr_B;//B端口读寄存器地址
    input [ADDR:0]W_Addr;//写寄存器地址
    input [SIZE:0]W_Data;//写入数据
    
    output [SIZE:0]R_Data_A;//A端口读出数据
    output [SIZE:0]R_Data_B;//B端口读出数据
    
    reg [SIZE:0]REG_Files[0:NUM];//寄存器堆本体
    integer i;//用于遍历NUM个寄存器
    
    always@(posedge Clk)//时钟信号或清零信号上升沿
    begin
        if(reset)//清零
                for(i=0;i<=NUM;i=i+1) REG_Files[i]<=0;
        else//不清零,检测写控制, 高电平则写入寄存器
		     if(W_Addr != 0) 
			     begin 
			       if(Write_Reg) REG_Files[W_Addr]<=W_Data;
			     end 
                
    end
    
    //读操作没有使能或时钟信号控制, 使用数据流建模(组合逻辑电路,读不需要时钟控制)
    assign R_Data_A=REG_Files[R_Addr_A];
    assign R_Data_B=REG_Files[R_Addr_B];

endmodule
