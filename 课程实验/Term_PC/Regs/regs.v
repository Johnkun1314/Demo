`timescale 1ns / 1ps

module regs( R_Addr_B,R_Addr_A,Write_Reg,W_Addr, W_Data, R_Data_A,R_Data_B,clk,reset );
     reg  [31:0] REG_Files[0:31]; 
	input  [5:0] R_Addr_B,R_Addr_A;
	input        Write_Reg;
	input  [5:0] W_Addr;
	input  [31:0] W_Data;
	output [31:0] R_Data_A,R_Data_B;
	input  clk,reset; 
	 always@(posedge clk or posedge reset)
	 begin
	   if(reset) //初始化
		 begin 
		   REG_Files[0] <= 0;REG_Files[1] <= 0;REG_Files[2] <= 0;REG_Files[3] <= 0;REG_Files[4] <= 0;
		   REG_Files[5] <= 0;REG_Files[6] <= 0;REG_Files[7] <= 0;REG_Files[8] <= 0;REG_Files[9] <= 0;
			REG_Files[10] <= 0;REG_Files[11] <= 0;REG_Files[12] <= 0;REG_Files[13] <= 0;REG_Files[14] <= 0;
		   REG_Files[15] <= 0;REG_Files[16] <= 0;REG_Files[17] <= 0;REG_Files[18] <= 0;REG_Files[19] <= 0;
			REG_Files[20] <= 0;REG_Files[21] <= 0;REG_Files[22] <= 0;REG_Files[23] <= 0;REG_Files[24] <= 0;
		   REG_Files[25] <= 0;REG_Files[26] <= 0;REG_Files[27] <= 0;REG_Files[28] <= 0;REG_Files[29] <= 0;
			REG_Files[30] <= 0;REG_Files[31] <= 0;
		 end
		else
		 begin 
		   if(Write_Reg) //写入数据
             begin
               REG_Files[W_Addr] <= W_Data;
				 end				 
	    end	
	 end
	 assign R_Data_A  = REG_Files[R_Addr_A];
	 assign R_Data_B  = REG_Files[R_Addr_B];
endmodule
