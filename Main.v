module Main(clk, outZ);
input wire clk;
output wire[3:0] outZ;
wire[3:0] outX;
wire[3:0] outY;
wire[3:0] outULA;
wire[3:0] outPC;
wire[3:0] outMEM;
wire[3:0] FUNCAO;
wire[1:0] Tx, Ty, Tz;
wire Tula;

PC contador(clk, outPC);
memory mem(outPC, FUNCAO, outMEM);
Control UC(clk, FUNCAO, Tx, Ty, Tz, Tula);
registrador REGX(outMEM, Tx, clk, outX);
registrador REGY(outULA, Ty, clk, outY);
registrador REGZ(outY, Tz, clk, outZ);
ULA unidLA(Tula, outX, outY, outULA);
		
endmodule 