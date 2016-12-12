module CPU(clk, outZ);
input wire clk;
output wire[3:0] outZ;
wire[3:0] outX;
wire[3:0] outY;
wire[3:0] outULA;

wire[1:0] Tx, Ty, Tz;
wire Tula;

registrador REGX(in, Tx, clk, outX);
registrador REGY(outULA, Ty, clk, outY);
registrador REGZ(outY, Tz, clk, outZ);

ULA unidLA(Tula, outX, outY, outULA);

projeto2 UC(Instrucao, Tx, Ty, Tz, Tula);


		
endmodule 