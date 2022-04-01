  module performance_Addsub_H872220872_L39 ( 
a,
 b,
 ci,
 add,
 s);
input [63:0] a;
input [63:0] b;
input  ci;
input  add;
output [63:0] s;

reg [63:0] s;
always @(a or b or add or ci)
begin
if (add)
 s = a+b+ci; else 
 s = a-b+ci-1;end
endmodule
