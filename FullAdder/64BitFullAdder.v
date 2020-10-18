`include "16BitFullAdder.v"
module fullAdder64bit(X,Y,Cin,Sum,Cout);
input  [63:0] X,Y;
input Cin;
output [63:0] Sum;
output Cout;
wire C1,C2,C3;

fullAdder16bit FA1(X[15:0],Y[15:0],Cin,Sum[15:0],C1);
fullAdder16bit FA2(X[31:16],Y[31:16],C1,Sum[31:16],C2);
fullAdder16bit FA3(X[47:32],Y[47:32],C2,Sum[47:32],C3);
fullAdder16bit FA4(X[63:48],Y[63:48],C3,Sum[63:48],Cout);
endmodule