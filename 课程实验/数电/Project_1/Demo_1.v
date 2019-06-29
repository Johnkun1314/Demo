`timescale 1ns / 1ps

module Demo_1(A,B,C,D,E,Y );
      input A,B,C,D,E;
      output Y;
      wire A,B,C,D,E,Y;
      wire A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;
      and u1(A0,A,B,C);
      and u2(A1,A,B,D);
      and u3(A2,A,B,E);
      and u4(A3,A,C,D);
      and u5(A4,A,C,E);
      and u6(A5,A,D,E);
      and u7(A6,B,C,D);
      and u8(A7,B,C,E);
      and u9(A8,B,D,E);
      and u10(A9,C,D,E);
      or u11(Y,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9);
      
      
      //assign Y=((A&B&C)|(A&B&D)|(A&B&E)|(A&C&D)|(A&C&E)|(A&D&E)|(B&C&D)|(B&C&E)|(B&D&E)|(C&D&E));
endmodule
