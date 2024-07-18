module p_adder(s,co,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0] s,co;
wire [3:0]co;
wire x1,x2,x3,x4;

Full_add i1(s[0],co[0],a[0],b[0],cin);
Full_add i2(s[1],co[1],a[1],b[1],co[0]);
Full_add i3(s[2],co[2],a[2],b[2],co[1]);
Full_add i4(s[3],co[3],a[3],b[3],co[2]);

endmodule
