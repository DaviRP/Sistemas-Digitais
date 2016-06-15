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


module   


module teste;
	integer Write;
	reg [10:0]x1;
	reg [10:0]x2;
	reg [10:0]x3;
	reg [10:0]y1;
	reg [10:0]y2;
	reg [10:0]y3;
	reg [10:0]PointX;
	reg [10:0]PointY;
	reg CLK;
	reg rst;
	
	Triangle A(PointX,PointY,X_1,Y_1,X_2,Y_2,X_3,Y_3,Exit);
	
	initial begin
		Write = $fopen("result.txt", "w");
		$dumpvars(0, A);
			#0;
				X_1 <=0;
				Y_1 <=0;
				X_2 <=10;
				Y_2 <=0;
				X_3 <=0;
				Y_3 <=10;
				PointX <=3;
				PointY <=3;
			#5;
				$fdisplay(Write, "%d", Exit);
			#6;
				X_1 <=15;
				Y_1 <=15;
				X_2 <=30;
				Y_2 <=0;
				X_3 <=15;
				Y_3 <=0;
				PointX <=3;
				PointY <=3;
			#9;
				$fdisplay(Write, "%d", Exit);
			#10;
		$finish;
	end
endmodule