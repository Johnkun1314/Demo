`timescale 1ns / 1ps

module demo_one( x, y, clk, rst_n, res);
    
    input [4:0] x, y;
    input       clk;
    input       rst_n;
    output [9:0] res;
    reg [9:0] res;
    reg [9:0] temp0;
    reg [9:0] temp1;
    reg [9:0] temp2;
    reg [9:0] temp3;
	 reg [9:0] temp4;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            res <= 0;
            temp0 <= 0;
            temp1 <= 0;
            temp2 <= 0;
            temp3 <= 0;
				temp4 <= 0;

        end
        else begin
            temp0 <= y[0]? {5'b0, x} : 0;
            temp1 <= y[1]? {4'b0, x, 1'b0} : 0;
            temp2 <= y[2]? {3'b0, x, 2'b0} : 0;
            temp3 <= y[3]? {2'b0, x, 3'b0} : 0;
				temp4 <= y[4]? {1'b0, x, 4'b0} : 0;

            res <=temp0+temp1+temp2+temp3+temp4 ;
        end
    end

endmodule
