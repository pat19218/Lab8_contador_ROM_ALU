module testbench();

reg [3:0] A,B;
reg [2:0] opcion;
wire [3:0] resultado;

ALU m1(A, B, opcion, resultado);

initial begin
	$display("  opcion | operacion    |");
	$display("-----------------------");
	$display("   000    |    A AND B   |");
	$display("   001    |    A  OR B   |");
	$display("   010    |    A   + B   |");
	$display("   011    |      NULO    |");
	$display("   100    |    A AND B'  |");
	$display("   101    |    A  OR B'  |");
	$display("   110    |    A   - B   |");
	$display("   111    |      STL     |");

	$display(" ");
	$display("  A    |  B   |opcion|  Y  |");
	$display("-----|------|------|-----|");
	$monitor("%b |  %b| %b  | %b|", A, B, opcion, resultado);

	   A = 4'b0101; B = 4'b1011; opcion = 3'b000;
	#1 A = 4'b0101; B = 4'b1011; opcion = 3'b001;
	#1 A = 4'b0101; B = 4'b1011; opcion = 3'b010;
	#1 A = 4'b1101; B = 4'b1001; opcion = 3'b011;
	#1 A = 4'b0001; B = 4'b1001; opcion = 3'b100;
	#1 A = 4'b1111; B = 4'b0001; opcion = 3'b101;
	#1 A = 4'b1101; B = 4'b1101; opcion = 3'b110;
	#1 A = 4'b1010; B = 4'b1111; opcion = 3'b111;
	#1 A = 4'b1000; B = 4'b1011; opcion = 3'b101;
	#1 A = 4'b1100; B = 4'b0011; opcion = 3'b010;
	#1 A = 4'b1010; B = 4'b0111; opcion = 3'b111;
	
	
end



initial
	#20 $finish;		
initial begin
	$dumpfile("ALU_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule