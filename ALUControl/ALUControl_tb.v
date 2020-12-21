`include "ALUControl.v"
module ALUControl_tb();
reg [1:0] ALUOp;
reg [6:0] Funct7;
reg [2:0] Funct3;
wire [3:0]  ALUcontrolinput;

    ALUControl aluCtrl(ALUOp, Funct7, Funct3, ALUcontrolinput);

    initial begin
		ALUOp = 2'b10;
		Funct7 = 7'b0000000;
		Funct3 = 3'b000;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUcontrolinput);
		ALUOp = 2'b10;
		Funct7 = 7'b0100000;
		Funct3 = 3'b000;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUcontrolinput);
		ALUOp = 2'b10;
		Funct7 = 7'b0000000;
		Funct3 = 3'b111;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUcontrolinput);
		ALUOp = 2'b10;
		Funct7 = 7'b0000000;
		Funct3 = 3'b110;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUcontrolinput);
	end
endmodule

