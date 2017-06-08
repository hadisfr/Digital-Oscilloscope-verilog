module volt_div(input signed [8:0] v_in, input [1:0] vd, output [9:0] v_out);
	assign v_out = 240 - (v_in >> vd);
endmodule
