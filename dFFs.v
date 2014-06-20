`timescale 1ns / 1ps

module dFFs(
	input clk,
	input rst,
	input d,
	output reg q
    );
	 
	 always @(posedge clk or posedge rst) // asynch reset
	 begin
		if(rst == 1) begin
			q <= 0;
		end
		else begin
			q <= d;
		end
	end

endmodule
