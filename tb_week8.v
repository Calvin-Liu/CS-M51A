
 `timescale 1 ns / 1 ps

 module tb_week8();
  
	reg clk;
	reg rst;
	reg d;
	wire q;
  
	always begin		
		#5 clk = ~clk; //clk flip
	end

   initial begin
      clk = 1; // don't forget!!
		rst = 0;
		d = 0;
		
		#5 rst = 1;
		
		#10;
		rst = 0;
		
		//#6;
		@(posedge clk); // after clk rising
		d = 1;
		
		#1;
		if( q != 0 ) begin // output check
			$display("Expected output 0, but observed", q); // q for 1 and x detection
			$stop;
		end
		
		@(posedge clk);
		d = 0;		
		
		#1;
		if( q != 1 ) begin
			$display("Expected output 1, but observed", q);
			$stop;
		end
		
		#10;
		$finish;		
   end	
	
	dFFs u_dFFs
	(
		.clk(clk),
		.rst(rst),
		.d(d),
		.q(q)
	);
  endmodule
