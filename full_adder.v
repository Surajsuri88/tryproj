module Full_add(s,ca,a,b,ci);
input a,b,ci;
output s,ca;
wire x1,x2,x3,x4;

xor_gate i1(x1,a,b);
xor_gate i2(s,x1,ci);

assign ca= (a&&b)|| (ci && x1);
endmodule
