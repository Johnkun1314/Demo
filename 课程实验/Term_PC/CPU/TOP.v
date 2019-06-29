`timescale 1ns / 1ps

module TOP(SW,Clk, //使能开关
		Output_Data, //数据输出
		which,led,shine //数码管输出
    );

    output [2:0] which; //八段位置
	 output [7:0] led;  //八段led
	 output reg shine = 1;; //数码管使能开关
	 
	 
	 	 //数码管显示
	 LedTube Out_LedTube (
    .data(PC),  //数据
    .clk(Clk),    //时钟
    .which(which), //数码管位置
    .led(led)     //数值
    );
endmodule
