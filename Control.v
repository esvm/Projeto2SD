module Control(clk, Instrucao, Tx, Ty, Tz, Tula);
input wire clk;
input wire [2:0] Instrucao;
output reg[1:0] Tx, Ty, Tz;
output reg Tula;

//Código das instruções
parameter 
	clrld = 3'b000,
	addld = 3'b001, 
	add = 3'b010,
	div2 = 3'b011,
	disp = 3'b100,

//Código das instruções dos registradores
parameter
	hold = 2'b00;
	load = 2'b01;
	shiftr = 2'b10;
	reset = 2'b11;
	
always@(posedge clk) begin
	case (Instrucao)
		clrld: 
 		begin 
			Tx <= 2'load;
			Ty <= 2'reset;
			Tz <= 2'reset; 
			Tula <= 0; 
		 end
		addld: 
		 begin 
			Tx <= 2'load;
			Ty <= 2'load;
			Tz <= 2'hold;
			Tula <= 0;
		 end
		add: 
		 begin
			Tx <= 2'hold;
			Ty <= 2'load;
			Tz <= 2'hold;
			Tula <= 0;
		 end
		div2: 
		 begin
			Tx <= 2'hold;
			Ty <= 2'shiftr;
			Tz <= 2'hold;
			Tula <= 0;
		 end
		 disp:
		 begin
			Tx <= 2'reset;
			Ty <= 2'reset;
			Tz <= 2'load;
			Tula <= 0;
		 end
	endcase 
end
endmodule 
