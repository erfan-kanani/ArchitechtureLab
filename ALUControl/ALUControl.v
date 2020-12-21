module ALUControl(ALUOp, Funct7, Funct3, ALUcontrolinput);
input [1:0] ALUOp;
input [6:0] Funct7;
input [2:0] Funct3;
output reg [3:0] ALUcontrolinput;

    always@(*)
        begin
            case(ALUOp)
        2'b00: ALUcontrolinput <= 4'b0010; //add
 		2'b01: ALUcontrolinput <= 4'b0110; //sub
        2'b10 : begin //R-type
                case({Funct7, Funct3})
				    10'b0000000000: ALUcontrolinput <= 4'b0010; //add
				    10'b0100000000: ALUcontrolinput <= 4'b0110; //subtract
				    10'b0000000111: ALUcontrolinput <= 4'b0000; //AND
				    10'b0000000110: ALUcontrolinput <= 4'b0001; //OR
				default: ALUcontrolinput <= 4'bxxxx; //invalid input
			    endcase
            end
            default:ALUcontrolinput=4'bxxxx;
            endcase
        end
endmodule            
 

