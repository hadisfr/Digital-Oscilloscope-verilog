module clk_div_2(input clk, output reg clk_out);
		
	always @(posedge clk) begin
			clk_out <= ~clk_out;
	end

endmodule
