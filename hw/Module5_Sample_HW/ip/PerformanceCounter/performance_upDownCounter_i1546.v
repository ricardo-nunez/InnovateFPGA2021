  module performance_upDownCounter_i1546 ( 
load,
 load_value,
 up_down,
 clken,
 count,
 reset,
 clk);
input  load;
input [63:0] load_value;
input  up_down;
input  clken;
input  reset;
input  clk;
output [63:0] count;

  wire [31:0] count_1678;
  wire [31:0] count_1606;
  wire  GLOBAL_DEFAULT_CLOCK_3;
  wire [63:0] constant_out_1553;
  wire [31:0] mux_out_1645;
  wire  inv_out_1557;
  wire [63:0] mux_out_1567;
  wire [31:0] mux_out_1573;
  wire [63:0] sum_out_1556;


assign constant_out_1553 = 64'b1;

assign inv_out_1557 = ~up_down;

  performance_Addsub_H872220872_L39 Addsubi1561 ( count, constant_out_1553, inv_out_1557, up_down, sum_out_1556);

  performance_mux_2to1_w64_ws1 Muxi1568 ( sum_out_1556, load_value, load, mux_out_1567);

  performance_REG32LR Regi1639 ( mux_out_1573, clken, reset, count_1606, clk);

  performance_REG32LR Regi1711 ( mux_out_1645, clken, reset, count_1678, clk);



assign mux_out_1645 = {mux_out_1567[63],mux_out_1567[62],mux_out_1567[61],mux_out_1567[60],mux_out_1567[59],mux_out_1567[58],mux_out_1567[57],mux_out_1567[56],mux_out_1567[55],mux_out_1567[54],mux_out_1567[53],mux_out_1567[52],mux_out_1567[51],mux_out_1567[50],mux_out_1567[49],mux_out_1567[48],mux_out_1567[47],mux_out_1567[46],mux_out_1567[45],mux_out_1567[44],mux_out_1567[43],mux_out_1567[42],mux_out_1567[41],mux_out_1567[40],mux_out_1567[39],mux_out_1567[38],mux_out_1567[37],mux_out_1567[36],mux_out_1567[35],mux_out_1567[34],mux_out_1567[33],mux_out_1567[32]};
assign mux_out_1573 = {mux_out_1567[31],mux_out_1567[30],mux_out_1567[29],mux_out_1567[28],mux_out_1567[27],mux_out_1567[26],mux_out_1567[25],mux_out_1567[24],mux_out_1567[23],mux_out_1567[22],mux_out_1567[21],mux_out_1567[20],mux_out_1567[19],mux_out_1567[18],mux_out_1567[17],mux_out_1567[16],mux_out_1567[15],mux_out_1567[14],mux_out_1567[13],mux_out_1567[12],mux_out_1567[11],mux_out_1567[10],mux_out_1567[9],mux_out_1567[8],mux_out_1567[7],mux_out_1567[6],mux_out_1567[5],mux_out_1567[4],mux_out_1567[3],mux_out_1567[2],mux_out_1567[1],mux_out_1567[0]};
assign count = {count_1678[31],count_1678[30],count_1678[29],count_1678[28],count_1678[27],count_1678[26],count_1678[25],count_1678[24],count_1678[23],count_1678[22],count_1678[21],count_1678[20],count_1678[19],count_1678[18],count_1678[17],count_1678[16],count_1678[15],count_1678[14],count_1678[13],count_1678[12],count_1678[11],count_1678[10],count_1678[9],count_1678[8],count_1678[7],count_1678[6],count_1678[5],count_1678[4],count_1678[3],count_1678[2],count_1678[1],count_1678[0],count_1606[31],count_1606[30],count_1606[29],count_1606[28],count_1606[27],count_1606[26],count_1606[25],count_1606[24],count_1606[23],count_1606[22],count_1606[21],count_1606[20],count_1606[19],count_1606[18],count_1606[17],count_1606[16],count_1606[15],count_1606[14],count_1606[13],count_1606[12],count_1606[11],count_1606[10],count_1606[9],count_1606[8],count_1606[7],count_1606[6],count_1606[5],count_1606[4],count_1606[3],count_1606[2],count_1606[1],count_1606[0]};

endmodule
