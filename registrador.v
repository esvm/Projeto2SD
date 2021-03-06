module registrador(in, cod, clk, out);
input wire[3:0] in;
input wire[1:0] cod;
input wire clk;
output reg[3:0] out;

//Código das instruções dos registradores
parameter
HOLD = 2'b00,
LOAD = 2'b01,
SHIFTR = 2'b10,
RESET = 2'b11;

always@(negedge clk) begin
	case(cod)
		HOLD: out <= out;
		LOAD: out <= in;
		SHIFTR: out <= (out >> 1);
		RESET: out <= 4'b0000;
	endcase
end

endmodule
