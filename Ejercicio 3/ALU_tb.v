module testbench();


initial
	#50 $finish;		
initial begin
	$dumpfile("ALU_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule