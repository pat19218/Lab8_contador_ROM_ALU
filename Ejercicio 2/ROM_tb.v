module testbench();
reg clk = 0;



always@(*)begin
	#1 clk = ~clk;
end

always@(*)begin
	#1 clk = ~clk;
end


initial
	#100 $finish;		

initial begin
	$dumpfile("ROM_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule