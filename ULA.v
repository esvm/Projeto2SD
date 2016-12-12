module ULA(cod, inA, inB, out);
input wire[3:0] inA, inB;
input wire cod;
output reg[3:0] out;

parameter
ADD = 1'b0,
SUB = 1'b1;

always begin
	case(cod)
		ADD: out <= inA + inB;
		SUB: out <= inB - inA;
	endcase 
end

endmodule 