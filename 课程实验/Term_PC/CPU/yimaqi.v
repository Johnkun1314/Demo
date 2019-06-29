`timescale 1ns / 1ps
module yimaqi(OP,func,write_reg,ALU_OP);
input [5:0]OP;
input [5:0]func; 
output reg write_reg; 
output reg [3:0]ALU_OP; 
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
            write_reg=(func==0)?1'b0:1'b1; 
		  end
    end
endmodule