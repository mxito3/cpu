//五位二选一数据选择器
module select(
    input [4:0] input1,input2,
    input flag,
    output [4:0] selectedData
);
assign selectedData=(flag==1) ? input1:input2;
endmodule 
