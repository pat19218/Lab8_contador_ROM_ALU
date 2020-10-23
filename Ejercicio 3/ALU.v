module memory (input wire [11:0]addres, output wire [7:0]data);

	reg [7:0]mem[0:4095];	

initial begin
	$readmemb("memoria.list",mem);
end

assign data = mem[addres];

endmodule

