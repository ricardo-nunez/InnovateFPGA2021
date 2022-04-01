  module performance_Merge_i1524 ( 
in0,
 in1,
 out);
input [31:0] in0;
input [31:0] in1;
output [63:0] out;

assign out = {in0,in1};
endmodule
