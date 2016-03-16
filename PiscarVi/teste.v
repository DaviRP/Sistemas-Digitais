module value(
	input clk,
	output liht
);
	reg[4:0] cont = 0;
	reg light_on = 0;

	assign light = light_on;

	always @(posedge clk) begin
		if (cont == 50) begin
			light_on  = ~light_on;
			cont <= 0;
		end
		else begin
			cont <= cont+1;
		end
	end
endmodule

module test;
	
	reg clk;
	wire light;

	value V(clk, light);
	always #1 clk = ~clk;

	initial begin
		$dumpvars(0, V);
		clk <= 1'b1;
		#10
		$finish;
	end
endmodule