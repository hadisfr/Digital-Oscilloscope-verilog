module trigger(input clk,input [7:0] level, trig_src, input slope,output reg trig_en);

reg [7:0] last;

always @(posedge clk)begin
	last <= trig_src;
	trig_en <= (~slope && level <= trig_src && last <= level) || (slope && level >= trig_src && last >= level);
end

endmodule
