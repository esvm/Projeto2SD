module memory(input wire [3:0] seletor, output reg [2:0] funcao, output reg [3:0] valor);
	
	//Constantes utilizadas no programa
	parameter
	A = 4'b0100,
	B = 4'b0010;
	
	//Código das instruções do programa
	parameter clrld = 3'b000; 
	parameter addld = 3'b001; 
	parameter add = 3'b010; 
	parameter div2 = 3'b011;
	parameter disp = 3'b100;

	always begin
		#2
		case(seletor)
			4'b0000:
			begin
				funcao <= clrld;
				valor <= A;
			end
			4'b0001:
			begin
				funcao <= addld;
				valor <= B;
			end
			4'b0010:
			begin
				funcao <= add;
				valor <= 0;
			end
			4'b0011:
			begin
				funcao <= div2;
				valor <= 0;
			end
			4'b0100:
			begin
				funcao <= disp;
				valor <= 0;
			end
		endcase
	end

endmodule
