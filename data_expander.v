// 十六位扩展为3２位
module expander(
  input [15:0] input1,
  output [31:0] output1
);
assign output1=(input1[15]==1'b0) ? {{16{1'b0}},input1}:{{16{1'b1}},input1};
endmodule // expander