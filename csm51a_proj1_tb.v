`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:43 04/23/2014
// Design Name:   TextbookCircuit
// Module Name:   C:/Users/Anais Zarifian/M51AProject1/ProjectOneTestBench.v
// Project Name:  M51AProject1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TextbookCircuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ProjectOneTestBench;

	// Inputs
	reg x2;
	reg x1;
	reg x0;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	TextbookCircuit uut (
		.x2(x2), 
		.x1(x1), 
		.x0(x0), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x2 = 0;
		x1 = 0;
		x0 = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		
		x2 <= 0; x1 <= 0; x0 <= 0;
		#100 $display ("z = %b", z);
		
		x2 <= 0; x1 <= 0; x0 <= 1;
		#100 $display ("z = %b", z);
		
		x2 <= 0; x1 <= 1; x0 <= 0;
		#100 $display ("z = %b", z);
		
		x2 <= 0; x1 <= 1; x0 <= 1;
		#100 $display ("z = %b", z);
		
		x2 <= 1; x1 <= 0; x0 <= 0;
		#100 $display ("z = %b", z);
		
		x2 <= 1; x1 <= 0; x0 <= 1;
		#100 $display ("z = %b", z);
		
		x2 <= 1; x1 <= 1; x0 <= 0;
		#100 $display ("z = %b", z);
		
		x2 <= 1; x1 <= 1; x0 <= 1;
		#100 $display ("z = %b", z);
		
		
		
	end
	
	//initial begin
	
	//$monitor("z = %d, x2 = %d, x1 = %d, x0 = %d\n",z,x2,x1,x0);
	
	//end
      
endmodule

