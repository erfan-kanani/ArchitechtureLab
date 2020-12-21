module ALU (I1,I2,ALUcontrol,Result,Zero);
input  [63:0] I1, I2;
input  [3:0] ALUcontrol;
output reg [63:0] Result;
output reg Zero;

    always@(*)
        begin
        case(ALUcontrol)
            4'b0010:Result= (I1 + I2);
            4'b0110:Result= (I1 - I2);
            4'b0000:Result= (I1 & I2);
            4'b0001:Result= (I1 | I2);
            default:Result=64'hxxxxxxxxxxxxxxxx; //invalid input

        endcase

         if(Result==0) assign Zero =1;  
         else assign Zero = 0;
         end
endmodule           
        
