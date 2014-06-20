
 `timescale 1 ns / 1 ps

 module tb_week6();
  
	reg clk;
	reg rst;
	reg in;
	wire [1:0] out;
  
	always begin
		#5 clk = ~clk;
	end

   initial begin
      clk = 1;
		rst = 0;
		in = 0;
		
		#5;		
		rst = 1;
		
		#10;
		rst = 0;
		
		@(posedge clk);
		in = 0;
		
		@(posedge clk);
		in = 0;
		
		@(posedge clk);
		in = 1;
		
		@(posedge clk);
		in = 1;
		
		@(posedge clk);
		in = 1;
		
		#20;
		$finish;		
   end	
	
	week6 u_week6(
		.rst(rst),
		.clk(clk),
		.in(in),
		.out(out)
	);
  
  endmodule
