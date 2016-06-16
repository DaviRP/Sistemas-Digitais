module math

	(input [10:0] pt1_x, input [10:0] pt1_y, input [10:0] pt2_x,input [10:0] pt2_y, input [10:0] pt3_x,input [10:0] pt3_y, output Out)
	
	wire signed res1;
	wire signed res2;


	assign  res1 =(pt1_x - pt3_x) * (pt2_y - pt3_y) ;

	assign  res2 =(pt2_x - pt3_x) * (pt1_y - pt3_y) ;


	assign  out = res1 < res1;



endmodule


module cadTri 

	(input [10:0] ponto_x,input [10:0] ponto_y,input [10:0] pt1_x, input [10:0] pt1_y, input [10:0] pt2_x,input [10:0] pt2_y, input [10:0] pt3_x,input [10:0] pt3_y, output Out_F)


	wire x,y,z;

	math i (ponto_x,ponto_y,pt1_x,pt1_y,pt2_x,pt2_y,x);
	math j (ponto_x,ponto_y, pt2_x,pt2_y,pt3_x,pt3_y,y);
	math k (ponto_x,ponto_y,pt3_x,pt3_y,pt1_x,pt1_y, z);


	assign  Out_F = x= y & x=z ;


endmodule

module teste;
	
	reg [10:0]x1;
	reg [10:0]x2;
	reg [10:0]x3;
	reg [10:0]y1;
	reg [10:0]y2;
	reg [10:0]y3;
	reg [10:0]PX;
	reg [10:0]PY;
	reg clk;
	reg rst;
	integer Write;

	Triangle T(PX,PY,x1,y1,x2,y2,x3,y3,Exit);
	
	initial begin
		Write = $fopen("result.txt", "w");
		$dumpvars(0, T);
			#0;
				x1 <=0;
				y1 <=0;
				x2 <=10;
				y2 <=0;
				x3 <=0;
				y3 <=10;
				PX <=3;
				PY <=3;
			#5;
				$fdisplay(Write, "%d", Exit);
			#6;
				x1 <=15;
				y1 <=15;
				x2 <=30;
				y2 <=0;
				x3 <=15;
				y3 <=0;
				PX <=3;
				PY <=3;
			#9;
				$fdisplay(Write, "%d", Exit);
			#10;
		$finish;
	end
endmodule


