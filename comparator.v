module comparator(input [9:0] y, volt, x, output out);
	assign out = y == volt || y == 240 || x == 320;
endmodule
