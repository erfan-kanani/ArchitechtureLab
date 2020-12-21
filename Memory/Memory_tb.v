`include "Memory.v"
module Memory_tb();
	reg [6:0] adr;
	wire [63:0] data;
	Memory ram(adr, data);
	initial
	begin
		adr = 20;
		#15 $display("Address: %d value: %d", adr, data);
		adr = 111;
		#15 $display("Address: %d value: %d", adr, data);
		adr = 54;
		#15 $display("Address: %d value: %d", adr, data);
		adr = 45;
		#15 $display("Address: %d value: %d", adr, data);
		adr = 5;
		#15 $display("Address: %d value: %d", adr, data);
	end

endmodule
