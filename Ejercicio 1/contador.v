module counter #(parameter N=12)
		(input logic clk, 
		 input logic reset,
		 output logic [N-1:0]q);

always@(posedge clk, posedge reset)
	if(reset)
		q<=0;
	else
		q<=q+1;
endmodule
