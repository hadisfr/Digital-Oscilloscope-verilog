module waddr_gen(input rst, clk, output reg [9:0]cnt);
	always @(posedge clk)//ATTENTION!!!!!
		//cnt <= (~rst && cnt < 640) ? cnt + 1 : rst ? 0 : cnt;
		cnt <= (cnt < 640) ? cnt + 1 : rst ? 0 : cnt;
endmodule
