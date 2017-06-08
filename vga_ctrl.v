
module vga_ctrl(input clk, r,g,b, output reg v_sync,h_sync,r_out,g_out,b_out, output reg [9:0] x,y);
//module vga_ctrl(input clk, output reg v_sync,h_sync, r_out,g_out,b_out);

		//reg [9:0] x,y;
		//wire r,g,b;
		
		// POSSIBLE ERROR
		
		//assign r = (x <= 319 && y <= 239) || (x > 319 && y >239) ;
		//assign g = (x > 319);
		//assign b = (y > 239);
		
		//assign addr = 120*(x % 240) + (y % 180);
		
		always @(posedge clk) begin
		  if (x < 799) x <= x+1; else x <=0;
			//x <= x >= 799 ? 0 : x + 1;
			if (y < 524)begin if (x >= 799) y<=y+1; else y <= y; end else y <= 0;
			//y <= y >= 524 ? 0 : x >= 799 ? y + 1 : y;
			h_sync <= (658 < x && x < 756) ? 0 : 1;
			v_sync <= (493 < y && y < 496) ? 0 : 1;
			r_out <= r;
			g_out <= g;
			b_out <= b;
			//r_out <= (x >= 401 || x < 240 || y >= 301 || y < 180) ? 0 : r;
			//g_out <= (x >= 401 || x < 240 || y >= 301 || y < 180) ? 0 : g;
			//b_out <= (x >= 401 || x < 240 || y >= 301 || y < 180) ? 0 : b;
		end
	
endmodule

