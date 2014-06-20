`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:53:18 06/02/2014
// Design Name:   iKon
// Module Name:   C:/Users/Anais Zarifian/csm51a_proj4/csm51a_proj4_tb.v
// Project Name:  csm51a_proj4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: iKon
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module csm51a_proj4_tb;

	// Inputs
	reg x0;
	reg x1;
	reg clk;
	reg rst;

	// Outputs
	wire z1;
	wire z0;
	wire s1;
	wire s0;

	// Instantiate the Unit Under Test (UUT)
	iKon uut (
		.x0(x0), 
		.x1(x1), 
		.s0(s0), 
		.s1(s1), 
		.rst(rst), 
		.clk(clk),
		.z1(z1), 
		.z0(z0)
	);

initial begin
clk=1'b1;//1 binary digit
forever #5 clk=~clk;
end

	initial begin
		// Initialize Inputs
		x0 = 0;
		x1 = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		// Test Case 1 - 4 Nickels (N N N N)

		rst = 0;
		x0 = 0;
		x1 = 0;
		#10;

		x0 = 1;
		x1 = 0;
		#10;

		x0 = 1; 
		x1 = 0;
		#10;

		x0 = 1;
		x1 = 0;
		#10;

		x0 = 1;
		x1 = 0;
		#10;
	
	//Reset
	x0 = 0;
	x1 = 0;
	rst = 1;
	#10
	
	// Test Case #2 - Two Dimes (D D)
	rst = 0;
	x1 = 1;
	x0 = 0;
	#10
	
	x1 = 1;
	x0 = 0;
	#10
	
	//Reset
	x0 = 0;
	x1 = 0;
	rst = 1;
	#10
	
	// Test Case #3 - Dime, Nickel,Dime - to test if a nickel is returned ( D N D)
	rst = 0;
	x1 = 1;
	x0 = 0;
	#10
	
	x1 = 0;
	x0 = 1;
	#10
	
	x1 = 1;
	x0 = 0;
	#10
	
	
	//Reset
	x0 = 0;
	x1 = 0;
	rst = 1;
	#10
	
	//Test Case #4 - resetting to return coins, in which case, nothing is done (D, Reset)
	
	rst = 0;
	x1 = 1;
	x0 = 0;
	#10
	
	rst = 1;
	x1 = 0;
	x0 = 0;
	
	
	end
	
      
endmodule

