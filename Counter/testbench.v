`include "64BitFullAdder.v"
`include "shiftRegister.v"

module testbench();
reg Clock, Enable, Reset, Load, Direction, LeftInput, RightInput;
	reg [63:0] DataIn;
	wire [63:0] Register_Out, Adder_Out;
	wire CarryOut;

	//Clock generator
	initial begin
		Clock = 0;
		forever #10 Clock = ~Clock;
	end
	fullAdder64bit fulladder(Register_Out,64'b0000000000000000000000000000000000000000000000000000000000000000,1'b0,Adder_Out,CarryOut);
	shift_register shiftReg(Enable,Reset,Load,Adder_Out,Direction,LeftInput,RightInput,Clock,Register_Out);
	defparam shiftReg.n = 64;
	
endmodule

