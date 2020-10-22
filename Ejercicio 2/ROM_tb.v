module testbench();


memory g();




initial
	#100 $finish;		

initial begin
	$dumpfile("ROM_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule