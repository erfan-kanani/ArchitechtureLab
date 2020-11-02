
`include "4BitFullAdder.v"
module fullAdder16bit(X,Y,Cin,Sum,Cout);
input  [15:0] X,Y;
input Cin;
output [15:0] Sum;
output Cout;
wire C1,C2,C3;

fullAdder4bit FA1(X[3:0],Y[3:0],Cin,Sum[3:0],C1);
fullAdder4bit FA2(X[7:4],Y[7:4],C1,Sum[7:4],C2);
fullAdder4bit FA3(X[11:8],Y[11:8],C2,Sum[11:8],C3);
fullAdder4bit FA4(X[15:12],Y[15:12],C3,Sum[15:12],Cout);

endmodule