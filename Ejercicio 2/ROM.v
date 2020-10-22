module  memory();
	reg [7:0] my_memory [0:11];
initial begin
	$readmemh("memory.list", my_memory);
end

endmodule
