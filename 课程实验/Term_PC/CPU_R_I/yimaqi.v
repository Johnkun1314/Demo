`timescale 1ns / 1ps
module yimaqi(OP,func,write_reg,ALU_OP,Mem_Write,alu_mem_s,rt_imm_s,imm_s,rd_rt_s);
input [5:0]OP;
input [5:0]func; 
output reg write_reg; 
output reg [3:0]ALU_OP; 
output reg Mem_Write,alu_mem_s,rt_imm_s,imm_s,rd_rt_s;
always@(*)
  begin
    if(OP==6'b000000)
       begin
        case(func) 
	         6'b100000 : ALU_OP <= 4'b0100;
			   6'b100010 : ALU_OP <= 4'b0101;
			   6'b100100 : ALU_OP <= 4'b0000;
			   6'b100101 : ALU_OP <= 4'b0001;
			   6'b100110 : ALU_OP <= 4'b0010;
			   6'b100111 : ALU_OP <= 4'b0011;
			   6'b101011 : ALU_OP <= 4'b0110;
			   6'b000100 : ALU_OP <= 4'b0111;
        endcase 
            write_reg<=1'b1;
				Mem_Write<=0;
				alu_mem_s<=0;
				rt_imm_s<=0;
				imm_s<=1;
				rd_rt_s<=0;
	 end
	  else 
		  begin
		     case(OP)
			     6'b001000 : begin ALU_OP <= 4'b0100;write_reg<=1'b1;
				                     Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=1;rd_rt_s<=1; 
								  end
				  6'b001100 : begin ALU_OP <= 4'b0000;write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=0;rd_rt_s<=1;
								  end
				  6'b001110 : begin ALU_OP <= 4'b0010;write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=0;rd_rt_s<=1;
								 end
				  6'b001011 : begin ALU_OP <= 4'b0110;write_reg<=1'b1;
				               Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=0;rd_rt_s<=1;
									end
				  6'b100011 : begin ALU_OP <= 4'b0100;write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=1;rt_imm_s<=1;imm_s<=1;rd_rt_s<=1;
								  end
				  6'b101011 : begin  ALU_OP <= 4'b0100;write_reg<=1'b0;
				              Mem_Write<=1;             rt_imm_s<=1;imm_s<=1;
								  end
			  endcase
		  end
    end
endmodule