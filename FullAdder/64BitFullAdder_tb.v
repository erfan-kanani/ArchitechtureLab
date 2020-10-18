`include "64BitFullAdder.v"
module FullAdd64_tb;
	reg Cin;
	reg [63:0] A, B;
	wire [63:0] S;
	wire Cout;
	fullAdder64bit fa64b(A,B,Cin,S,Cout);
	initial 
	begin
		assign Cin = 0;
		assign A = 1;
		assign B = 0;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Cin, S, Cout);

		assign Cin = 1;
		assign A = 1;
		assign B = 1;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Cin, S, Cout);

		assign Cin = 0;
		assign A = 0;
		assign B = 0;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Cin, S, Cout);

		assign Cin = 0;
		assign A = 10000;
		assign B = 20000;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Cin, S, Cout);
	end
endmodule