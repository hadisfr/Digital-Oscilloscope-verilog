module avg_calc(input clk, input rst, input [7:0] data, output reg [7:0] avg);

reg [18:0] sum;
reg [20:0] cnt;

always @(posedge clk) begin
	sum <= rst ? 0 : sum + data;
	avg <= rst ? sum/cnt :  avg;
	cnt <= rst ? 0 : cnt + 1;
end



endmodule
