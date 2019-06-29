`timescale 1ns / 1ps

module fulladder(a,b,c0,c1,f   );
  input a;
  input b;
  input c0;
  output c1;
  output f;
  
  assign f = a^b^c0;
  assign c1 = a&b||(a||b)&c0;

endmodule
