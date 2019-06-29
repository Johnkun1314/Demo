`timescale 1ns / 1ps

module testmodule(Data_Input,Data_Output,SW);

input [32:1] Data_Input;
input [6:1] SW;
output  [32:1] Data_Output;


RAM_B Data_RAM (
  .clka(SW[1]), // input clka
 
  .addra(Data_Input[6:1]), // input [5 : 0] addra
 
  .douta(Data_Output) // output [31 : 0] douta
);
endmodule
