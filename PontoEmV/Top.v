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