module sampling(input clk, input [7:0] in, output reg [7:0] out);
	always @(posedge clk)
		out <= in;
endmodule
