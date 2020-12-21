`include "ALU.v"

module ALU_tb();
reg [63:0] I1, I2;
reg [3:0] ALUcontrol;
wire [63:0] R;
wire Zero;

    ALU alu(I1, I2, ALUcontrol, R, Zero);
    initial begin

        I1 = 64'b11101111011;
		I2 = 64'b10101111010;
		ALUcontrol = 4'b0010;
		#20 $display("A: %d, B: %d, operation=sum Result=%d", I1, I2, R);
		I1 = 64'b0101111101011011;
		I2 = 64'b1100100011010110;
		ALUcontrol = 4'b0000;
		#20 $display("I1: %d, I2: %d, operation=AND  Result=%d ", I1, I2, R);
	end
endmodule

