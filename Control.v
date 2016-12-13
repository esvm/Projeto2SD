module Control(Instrucao, Tx, Ty, Tz, Tula);
input wire [2:0] Instrucao;
output reg[1:0] Tx, Ty, Tz;
output reg Tula;

parameter clrld = 3'b000; 
parameter addld = 3'b001; 
parameter add = 3'b010; 
parameter div2 = 3'b011;
parameter disp = 3'b100;

always begin
case (Instrucao)
clrld: 
 begin 
	Tx <= 2'b01;
	Ty <= 2'b11;
	Tz <= 2'b11; 
	Tula <= 0; 
 end
addld: 
 begin 
 	Tx <= 2'b01;
	Ty <= 2'b01;
	Tz <= 2'b00;
	Tula <= 0;
 end
add: 
 begin
 	Tx <= 2'b00;
	Ty <= 2'b01;
	Tz <= 2'b00;
	Tula <= 0;
 end
div2: 
 begin
 	Tx <= 2'b00;
	Ty <= 2'b10;
	Tz <= 2'b00;
	Tula <= 0;
 end
 disp:
 begin
 	Tx <= 2'b11;
	Ty <= 2'b11;
	Tz <= 2'b01;
	Tula <= 0;
 end

endcase 
end
endmodule 