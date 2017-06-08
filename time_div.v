/*module time_div(input sys_clk, input [1:0] td, output reg clk);
	reg [17:0] cnt;
	wire [17:0] const;
	assign const = td == 2'b00 ? 25 * 2**10 : 
										td == 2'b01 ? 25 * 2**11 :
										td == 2'b10 ? 25 * 2**12 :
										25 * 2**13;
										
	always @(posedge sys_clk)
		if(cnt >= const) begin
			cnt <= 0;
			clk <= ~clk;
		end
		else
			cnt <= cnt + 1;
endmodule*/

module time_div(input sys_clk, input [1:0] td, output reg clk);
	reg [30:0] cnt;
	wire [30:0] const;
	assign const = td == 2'b00 ? 8 : 
										td == 2'b01 ? 4 :
										td == 2'b10 ? 2:
										1;
										
	always @(posedge sys_clk)
		if(cnt >= const) begin
			cnt <= 0;
			clk <= ~clk;
		end
		else
			cnt <= cnt + 1;
endmodule
