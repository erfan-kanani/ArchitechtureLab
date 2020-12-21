`include "ControlUnit.v"
module ControlUnit_tb();
reg [6:0] opcode;
wire ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch;
wire [1:0] ALUOp;

ControlUnit control(opcode, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
initial begin
		opcode = 7'b0110011;
		#15 $display("OpCode: %b\nALUSrc: %b, MemToReg: %b, RegWrite: %b, MemRead: %b, MemWrite: %b, Branch: %b, ALUOp: %b\n", opcode, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
        opcode = 7'b0100011;
		#15 $display("OpCode: %b\nALUSrc: %b, MemToReg: %b, RegWrite: %b, MemRead: %b, MemWrite: %b, Branch: %b, ALUOp: %b\n", opcode, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
		opcode = 7'b0000011;
		#15 $display("OpCode: %b\nALUSrc: %b, MemToReg: %b, RegWrite: %b, MemRead: %b, MemWrite: %b, Branch: %b, ALUOp: %b\n", opcode, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
		opcode = 7'b1100011;
		#15 $display("OpCode: %b\nALUSrc: %b, MemToReg: %b, RegWrite: %b, MemRead: %b, MemWrite: %b, Branch: %b, ALUOp: %b\n", opcode, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
	end
endmodule

