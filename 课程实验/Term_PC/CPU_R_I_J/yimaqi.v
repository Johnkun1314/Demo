`timescale 1ns / 1ps
module yimaqi(Inst_code,OP,func,write_reg,ALU_OP,Mem_Write,alu_mem_s,rt_imm_s,imm_s,rd_rt_s,PC_s);
input [31:0] Inst_code;
input [5:0]OP;
input [5:0]func; 
output reg write_reg; 
output reg [3:0]ALU_OP; 
output reg Mem_Write,rt_imm_s,imm_s;
output reg [1:0] alu_mem_s,rd_rt_s,PC_s;
always@(*)
  begin
    if(OP==6'b000000)
      begin
        case(func) 
		      6'b001000 : begin ALU_OP <= 4'b0100;write_reg<=1'b0;
				Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				rd_rt_s<=0;PC_s<=2'b01;end //Ìø×ª
				
	         6'b100000 : begin ALU_OP <= 4'b0100;write_reg<=1'b1;
				                  Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				                  rd_rt_s<=0;PC_s<=2'b0;end
			   6'b100010 : begin ALU_OP <= 4'b0101;write_reg<=1'b1;
				                  Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				                  rd_rt_s<=0;PC_s<=2'b0;end
			   6'b100100 : begin ALU_OP <= 4'b0000;write_reg<=1'b1;
				                  Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				                  rd_rt_s<=0;PC_s<=2'b0;end
			   6'b100101 : begin ALU_OP <= 4'b0001;write_reg<=1'b1;
				                  Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				                  rd_rt_s<=0;PC_s<=2'b0;end
			   6'b100110 : begin ALU_OP <= 4'b0010;write_reg<=1'b1;
				                  Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				                  rd_rt_s<=0;PC_s<=2'b0;end
			   6'b100111 : begin ALU_OP <= 4'b0011;write_reg<=1'b1;
				                  Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
				                  rd_rt_s<=0;PC_s<=2'b0;end
			   6'b101011 : begin ALU_OP <= 4'b0110;write_reg<=1'b1;Mem_Write<=0;
				                  alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
										rd_rt_s<=0;PC_s<=2'b0;end
			   6'b000100 : begin ALU_OP <= 4'b0111;write_reg<=1'b1;Mem_Write<=0;
				                  alu_mem_s<=0;rt_imm_s<=0;imm_s<=1;
										rd_rt_s<=0;PC_s<=2'b0;end
								
        endcase 

	  end
	  else 
		  begin
		     case(OP)
			     6'b001000 : begin ALU_OP <= 4'b0100;write_reg<=1'b1;
				                     Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=1;rd_rt_s<=1; PC_s<=2'b0;
								  end
				  6'b001100 : begin ALU_OP <= 4'b0000;write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=0;rd_rt_s<=1;PC_s<=2'b0;
								  end
				  6'b001110 : begin ALU_OP <= 4'b0010;write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=0;rd_rt_s<=1;PC_s<=2'b0;
								 end
				  6'b001011 : begin ALU_OP <= 4'b0110;write_reg<=1'b1;
				               Mem_Write<=0;alu_mem_s<=0;rt_imm_s<=1;imm_s<=0;rd_rt_s<=1;PC_s<=2'b0;
									end
				  6'b100011 : begin ALU_OP <= 4'b0100;write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=1;rt_imm_s<=1;imm_s<=1;rd_rt_s<=1;PC_s<=2'b0;
								  end
				  6'b101011 : begin  ALU_OP <= 4'b0100;write_reg<=1'b0;
				              Mem_Write<=1;             rt_imm_s<=1;imm_s<=1;PC_s<=2'b0;
								  end
								  
								  
			     6'b000100 : begin ALU_OP <= 4'b0101;write_reg<=1'b0;
				               Mem_Write<=0;alu_mem_s<=1;rt_imm_s<=0;imm_s<=1;
									if(Inst_code[25:21]==Inst_code[20:16])
									  begin PC_s<=2'b10;end
									 else begin PC_s<=2'b0; end
									
								  end
				  6'b000101 : begin ALU_OP <= 4'b0101;write_reg<=1'b0;
				               Mem_Write<=0;alu_mem_s<=1;rt_imm_s<=0;imm_s<=1;
									if(Inst_code[25:21]==Inst_code[20:16])
									  begin PC_s<=2'b0;end
									 else begin PC_s<=2'b10; end
								  end
				  6'b000010 : begin write_reg<=1'b0;
				                    Mem_Write<=0;PC_s<=2'b11;
								  end
				  6'b000011 : begin write_reg<=1'b1;
				                    Mem_Write<=0;alu_mem_s<=2'b1X;rd_rt_s<=2'b1X;PC_s<=2'b11;
								  end
			  endcase
		  end
    end
endmodule
