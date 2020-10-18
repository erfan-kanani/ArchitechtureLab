`include "1BitFullAdder.v"
module fullAdder4bit(X,Y,Cin,Sum,Cout);
input  [3:0] X,Y;
input Cin;
output [3:0] Sum;
output Cout;
wire C1,C2,C3;

fullAdder FA1(X[0],Y[0],Cin,Sum[0],C1);
fullAdder FA2(X[1],Y[1],C1,Sum[1],C2);
fullAdder FA3(X[2],Y[2],C2,Sum[2],C3);
fullAdder FA4(X[3],Y[3],C3,Sum[3],Cout);

endmodule