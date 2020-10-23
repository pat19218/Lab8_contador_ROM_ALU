module testbench();

reg [11:0]addres;
wire [7:0]dato;


memory f(addres,dato);


initial begin
	addres = 12'b000000000000;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000000001000;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000001100000;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000000001111;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000000100001;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000000000011;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000000000101;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000001000000;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000000100010;
	#1 $display("Address = %b, data = %b", addres, dato);
	#1 addres = 12'b000001100110;
	#1 $display("Address = %b, data = %b", addres, dato);
end


initial
	#35 $finish;		
initial begin
	$dumpfile("ROM_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule