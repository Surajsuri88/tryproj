module nand_gate_behavioral(a,b,y);
input a,b;
output reg y;

always @ (a,b)
begin
assign y=~(a&b);
end
endmodule


module nand_test;
reg a,b;
wire y;
nand_gate_behavioral dut(a,b,y);
initial begin
a=0; b=0; #10;

a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
end
initial

	$monitor("a=%b  b=%b  y=%b ",a,b,y);
endmodule
