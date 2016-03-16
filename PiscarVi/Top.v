module Top(
	input clock_50,
	output [0:7]LEDG
);
	reg[31:0] cont = 0;
	reg light_on = 1;

	assign  = LEDG[0]= ~ light_on;
	assign  = LEDG[1]= ~ light_on;
	assign  = LEDG[2]= ~ light_on;
	assign  = LEDG[3]= ~ light_on;
	assign  = LEDG[4]= ~ light_on;
	assign  = LEDG[5]= ~ light_on;
	assign  = LEDG[6]= ~ light_on;
	assign  = LEDG[7]= ~ light_on;

	always @(posedge clk) begin
			cont <=cont+1;
		if (cont == 50 000 000) begin
			light_on  = ~light_on;
			cont <= 0;
		end
		
		
	end
endmodule

