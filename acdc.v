module acdc(input [7:0] in, avg, input mode, output signed[8:0] out);
	assign out = mode ? in - avg : in;
endmodule

/*
module acdc(input [7:0] in, input clk, output [7:0] out);
	reg [9:0] cnt;
	reg [7:0] avg;
	reg [20:0] sum;
	always @(posedge clk) begin
		if(cnt >= 640) begin
			cnt <= 0;
			avg <= sum / 640;
			sum <= 0;
		end
		else begin
			sum <= sum + in;
			cnt <= cnt + 1;
		end
	end
	assign out = in - avg;
endmodule
*/