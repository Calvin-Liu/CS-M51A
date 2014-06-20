`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:28 04/22/2014 
// Design Name: 
// Module Name:    TextbookCircuit 
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
module TextbookCircuit(x2,x1,x0,z);

input x0,x1,x2;
output z;

wire w0;
wire w1;
wire w2;


not(w2,x2);

not(w1, x1);

not(w0,x0);

wire m1;
wire m2;
wire m6;

and(m1,w2,w1,x0);
and(m2,w2,x1,w0);
and(m6,x2,x1,w0);

or(z,m1,m2,m6);



endmodule
