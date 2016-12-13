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
	disp = 3'b100;

//Código das instruções dos registradores
parameter
	hold = 2'b00,
	load = 2'b01,
	shiftr = 2'b10,
	reset = 2'b11;
	
always@(posedge clk) begin
	case (Instrucao)
		clrld: 
 		begin 
			Tx <= load;
			Ty <= reset;
			Tz <= reset; 
			Tula <= 0; 
		 end
		addld: 
		 begin 
			Tx <= load;
			Ty <= load;
			Tz <= hold;
			Tula <= 0;
		 end
		add: 
		 begin
			Tx <= hold;
			Ty <= load;
			Tz <= hold;
			Tula <= 0;
		 end
		div2: 
		 begin
			Tx <= hold;
			Ty <= shiftr;
			Tz <= hold;
			Tula <= 0;
		 end
		 disp:
		 begin
			Tx <= reset;
			Ty <= reset;
			Tz <= load;
			Tula <= 0;
		 end
	endcase 
end
endmodule 
