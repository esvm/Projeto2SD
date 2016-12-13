module Main(clk, outZ, outMEM, outPC, outULA, outX, outY, Tula);
input wire clk;
output wire[3:0] outZ;
output wire[3:0] outX;
output output wire[3:0] outY;
output wire[3:0] outULA;
output wire[3:0] outPC;
output wire[3:0] outMEM;
output wire[3:0] FUNCAO;
output wire[1:0] Tx, Ty, Tz;
output wire Tula;

PC contador(clk, outPC);
memory mem(outPC, FUNCAO, outMEM);
Control UC(clk, FUNCAO, Tx, Ty, Tz, Tula);
registrador REGX(outMEM, Tx, clk, outX);
registrador REGY(outULA, Ty, clk, outY);
registrador REGZ(outY, Tz, clk, outZ);
ULA unidLA(Tula, outX, outY, outULA);
		
endmodule 