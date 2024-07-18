module add(r1,r2,r3);
input [7:5]r2;
input [2:0]r3;
output reg [7:0]r1;
initial
	r1=8'b00000000;
always @ (r2)
 begin 
 r1[7:5]=r2;
 r1[2:0]=r3;

end
endmodule
