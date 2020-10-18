module fullAdder(X,Y,Cin,Sum,Cout);
input  X,Y,Cin;
output Sum,Cout;
assign Sum = (X^Y) ^ Cin;
assign Cout = ((X^Y) & Cin) | (X&Y);
endmodule