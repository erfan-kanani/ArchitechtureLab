`include "shiftRegister.v"
module shiftRegister_tb;
reg Clock, Enable, Reset, Load, Direction, LeftInput, RightInput;
reg [3:0] DataIn;
wire [3:0] out;

always
begin
	Clock = 0;
	#10;
	Clock = 1;
	#10;
end

shift_register shiftreg(Enable, Reset, Load, DataIn, Direction, LeftInput, RightInput, Clock, out);

initial begin
	Enable = 1;
	Reset = 0;
	Load = 1;
	Direction = 1;
	LeftInput = 1;
	RightInput = 1;
    DataIn = 4'b1010;
    #40 $display("%b", out);
	Load =0;
    #40 $display("%b", out);
    #40 $display("%b", out);
    #40 $display("%b", out);
    #40 $display("%b", out);
    Direction =0;
    LeftInput = 0;
    RightInput = 0;
    DataIn = 4'b0011;
    #40 $display("%b", out);
    #40 $display("%b", out);
    #40 $display("%b", out);
    #40 $display("%b", out);


end

endmodule
