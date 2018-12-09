module alu(
    input [31:0] num1,num2,
    input [2:0] operateType,
    output [31:0] result,
    output zeroFlag
);
reg [31:0] result;
reg zero;
always @(num1,num2,operateType) begin
  case (operateType)
    3'b000 : result=num1+num2;
	3'b100 : result=num1-num2;
	3'b001 : result=num1&num2;
	3'b101 : result=num1|num2;
	3'b010 : result=num1^num2;
	3'b110 : result={num2[15:0],0}; 
  endcase
    zero = (result==0)? 1:0;
end
endmodule // alu
