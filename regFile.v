//堆寄存器
module regFile(
  input [4:0] readIndex1,readIndex2,writeIndex,
  input [31:0] writeContent,
  input writeFlag,
  input clock,
  output [31:0] output1,output2
);
reg [31:0] regment[1:31]; 
assign output1 = (readIndex1==0) ? 0:regment[readIndex1];
assign output2 = (readIndex1==0) ? 0:regment[readIndex2];
always @(posedge clock) begin
if (writeFlag==1 && writeIndex!=0) begin
  regment[writeIndex] <= writeContent;
end
end
endmodule