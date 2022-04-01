  module performance_mux_2to1_w32_ws1 ( 
d0,
 d1,
 sel,
 out);
input [31:0] d0;
input [31:0] d1;
input  sel;
output [31:0] out;

reg [31:0] out;
always  @(sel or d0 or d1)
begin
case (sel)
1'b0 : out = d0;
1'b1 : out = d1;
endcase
end

endmodule
