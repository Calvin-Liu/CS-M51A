`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: T12
// Engineer: Anais Zarifian & Calvin Liu
// 
// Create Date:    15:36:26 06/02/2014 
// Design Name: 
// Module Name:    csm51a_proj3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module iKon (
	input x0,
	input x1,
	input rst,
	input clk,
	output s1, 
	output s0,
	output reg z1,
	output reg z0
);

wire J1K1;
wire J0;
wire K0;
//connections to JK flip flops
JKFF JKFF1(J0, K0, clk, rst,s0);
JKFF JKFF2(J1K1, J1K1, clk, rst, s1); 

always @(posedge clk, posedge rst) begin
		if (!rst) begin
			z1 <= (s1&x1)|(s1&s0&x0);
			z0 <= (s1&s0&x1);
		end
		else begin
			z1 <= 0;
			z0 <= 0;
		end
	end
//Assignment of J1K1
wire w1;
and (w1, s0, x0);
or (J1K1, x1, w1);

//Assignment of J0
and (J0, !x1, x0);

//Assignment of K0
wire w2;
and (w2, s1, x0);
or (K0, J0, w2);
endmodule 
