`timescale 1ns / 1ps

module fulladderplugs(   
  input[3:0] a,
  input[3:0] b,
  input c_in,
  output[3:0] sum,
  output c_out
  );
  wire[4:0] g,p,c;
    assign c[0]=c_in;
    assign p=a|b;
    assign g=a&b;
    assign c[1]=g[0]|(p[0]&c[0]);
    assign c[2]=g[1]|(p[1]&(g[0]|(p[0]&c[0])));
    assign c[3]=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0])))));
    assign c[4]=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0])))))));
    assign sum=p^c[3:0];
    assign c_out=c[4];

endmodule
