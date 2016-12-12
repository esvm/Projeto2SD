module Memoria(input wire [3:0] seletor,
	output reg [2:0] funcao,
	output reg [3:0] valor);
	
	parameter
	A = 4,
	C = 2,
	D = 1;

	always begin
		#2
		case(seletor)
			4'b0000:
			begin
				funcao <= 0;
				valor <= 0;
			end
			4'b0001:
			begin
				funcao <= 0;
				valor <= 0;
			end
			4'b0010:
			begin
				funcao <= 1;
				valor <= A;
			end
			4'b0011:
			begin
				funcao <= 1;
				valor <= C;
			end
			4'b0100:
			begin
				funcao <= 2;
				valor <= D;
			end
			4'b0101:
			begin
				funcao <= 3;
				valor <= 0;
			end
			4'b0110:
			begin
				funcao <= 4;
				valor <= 0;
			end
		endcase
	end

endmodule