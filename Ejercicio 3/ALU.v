module ALU (input wire [3:0] A,B, 
	    input wire [2:0] funcion, 
	    output logic[3:0] resul);

reg[3:0] Alu_resultado;
parameter f1 = 3'b000;
parameter f2 = 3'b001;
parameter f3 = 3'b010;
parameter f4 = 3'b011;
parameter f5 = 3'b100;
parameter f6 = 3'b101;
parameter f7 = 3'b110;
parameter f8 = 3'b111;

always@(*) begin
	case(funcion)
		f1: 
			Alu_resultado = A & B;
		f2: 
			Alu_resultado = A | B;
		f3: 
			Alu_resultado = A + B;
		f4: 
			Alu_resultado = 4'b0000;
		f5: 
			Alu_resultado = A & ~B;
		f6: 
			Alu_resultado = A | ~B;
		f7: 
			Alu_resultado = A - B;
		f8: 
			Alu_resultado = (A<B)? 4'd1:4'd0 ;

		default: Alu_resultado = A + B;
	endcase
	assign resul = Alu_resultado;
end
endmodule

