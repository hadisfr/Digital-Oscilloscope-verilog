module clk_div_t(input sys_clk, output  reg clk);
	reg [30:0] cnt;
	wire [30:0] const;
	assign const = 25*2**20;
										
	always @(posedge sys_clk)
		if(cnt >= const) begin
			cnt <= 0;
			clk <= ~clk;
		end
		else
			cnt <= cnt + 1;
endmodule
