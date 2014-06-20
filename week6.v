`timescale 1ns / 1ps

module week6(
	input clk,
	input rst,
	input in,
	output reg [1:0] out
);
	 
	 reg [1:0] PS;
	 reg [1:0] NS;

	// sequential logic
	always @(posedge clk) // evaluate this fn when posedge clk happens
	begin
		if( rst == 1 ) begin // rst case
			PS <= 0; // <= required for sequential logic
		end
		else begin // non-rst case
			PS <= NS;
		end	
	end
	
	//combinatorial logic for NS
	always @(*) //evaluate this fn when ANY input changes
	begin
		case( PS )
			0 : begin
				if( in == 0 ) begin
					NS = 3;
				end
				else begin
					NS = 1;
				end
			end
			
			1 : begin
				if( in == 0 ) begin
					NS = 0;
				end
				else begin
					NS = 2;
				end
			end
			
			2 : begin
				if( in == 0 ) begin
					NS = 1;
				end
				else begin
					NS = 3;
				end
			end
			
			default : begin
				if( in == 0 ) begin
					NS = 2;
				end
				else begin
					NS = 0;
				end
			end	
	
		endcase
	end
	
	
	//combinatorial logic for output (MEALY)
	always @(*)
	begin
		case( PS )
			0 : begin
				out = ( in == 0 ) ? 3 : 1; 
			end
			
			1 : begin
				out = ( in == 0 ) ? 0 : 2; 
			end
			
			2 : begin
				out = ( in == 0 ) ? 1 : 3; 
			end
			
			default : begin
				out = ( in == 0 ) ? 2 : 0; 
			end	
		endcase	
	end
	
	/*
	//combinatorial logic for output (MOORE)
	always @(*)
	begin
		case( PS )
			0 : begin
				out = 0;
			end
			
			1 : begin
				out = 1;
			end
			
			2 : begin
				out = 2;
			end
			
			default : begin
				out = 3;
			end	
		endcase	
	end
	*/

endmodule
