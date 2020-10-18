`include "dflipflop.v"
module shift_register(Enable,Reset,Load,DataIn,Direction,LeftInput,RightInput,Clock,Result);
parameter n = 4;
input Enable, Reset, Load, Direction, LeftInput, RightInput, Clock;
input [n-1:0] DataIn;
output wire [n-1:0] Result;

//wires to flipflop
reg [n-1:0] InputOfDflipflops;

genvar i;
generate
	for(i=0; i < n; i=i+1)
    //D, Clock,Q
		dflipflop dff(InputOfDflipflops[i],Clock,Result[i]);
endgenerate


always @(posedge Clock or negedge Reset)
begin
	if(Reset)
		InputOfDflipflops = 0;
	else if (Load)
		InputOfDflipflops = DataIn;
	else if (Enable) //if Dirction==1 then Shift left else shift right 
	begin
		if (Direction)
			InputOfDflipflops = {Result[n-2:0], RightInput}; //LSB = rightinput 
		else
			InputOfDflipflops = {LeftInput, Result[n-1:1]}; //MSB = leftinput
	end
end

endmodule