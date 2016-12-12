input [2:0] Instrucao;
reg[1:0] Tx, Ty, Tz;
reg Tula;

parameter clrld = 3b'000; 
parameter addld = 3b'001; 
parameter add = 3b'010; 
parameter div2 = 3'011;
parameter disp = 3'100;

case (Instrucao) 
clrld: 
 begin 
	Tx <= 2b'01;
	Ty <= 2b'11;
	Tz <= 2b'11; 
	Tula <= 0; 
 end
addld: 
 begin 
 	Tx <= 2b'01;
	Ty <= 2b'01;
	Tz <= 2b'00;
	Tula <= 0;
 end
add: 
 begin
 	Tx <= 2b'00;
	Ty <= 2b'01;
	Tz <= 2b'00;
	Tula <= 0;
 end
div2: 
 begin
 	Tx <= 2b'00;
	Ty <= 2b'10;
	Tz <= 2b'00;
	Tula <= 0;
 end
 disp:
 begin
 	Tx <= 2b'11;
	Ty <= 2b'11;
	Tz <= 2b'01;
	Tula <= 0;
 end

endcase 
