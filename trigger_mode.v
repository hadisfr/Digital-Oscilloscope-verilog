module trigger_mode(input clk, mode, trig_en, output rst);
	//mode : 0 = norm, 1 = auto
	reg [9:0] cnt;
	assign rst = ~mode ? trig_en : trig_en | cnt == 0;
	always @(posedge clk)
		cnt <= (trig_en || cnt >= 639) ? 0 : cnt + 1;
endmodule
