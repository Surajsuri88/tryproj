module airthmetic(a,b,c,d,e,f,g);
input [2:0]a,b;
output reg [3:0]c,d,e,f,g;

always @(a,b) begin
c=a+b;
d=a-b;
e=a*b;
f=a%b;
g=a**b;
end
endmodule

module tb1;
reg [2:0]a,b;
wire [3:0]c,d,e,f,g;

airthmetic dut(a,b,c,d,e,f,g);
initial begin
#10;
a=5; b=2; #10;

a=2;b=1;#10;
end

initial 
$monitor("a=%d  b=%d  c=%d  d=%d  e=%d  f=%d g=%d",a,b,c,d,e,f,g);
endmodule