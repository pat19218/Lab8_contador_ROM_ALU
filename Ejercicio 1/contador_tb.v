module testbench();

reg clk = 0;
reg reset = 1;

output wire[11:0]q;

counter c1(clk, reset, q);
initial
	#1 reset = 0;



always@(*)begin
	#1 clk = ~clk;
end

always@(*)begin
	#1 clk = ~clk;
end


initial
	#100 $finish;		

initial begin
	$dumpfile("contador_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule