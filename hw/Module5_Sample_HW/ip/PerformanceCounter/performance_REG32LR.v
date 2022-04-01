  module performance_REG32LR ( 
in,
 load,
 reset,
 out,
 clk);
input [31:0] in;
input  load;
input  reset;
input  clk;
output [31:0] out;

reg [31:0] out;
always @(posedge clk)
if (reset) out <= 32'b0;
else if (load) out <= in;
endmodule
