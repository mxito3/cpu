`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:16:53 12/09/2018
// Design Name:   alu
// Module Name:   /home/yapie/github/cpu/alu-test.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test;

	// Inputs
	reg [31:0] num1;
	reg [31:0] num2;
	reg [2:0] operateType;

	// Outputs
	wire [31:0] result;
	wire zeroFlag;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.num1(num1), 
		.num2(num2), 
		.operateType(operateType), 
		.result(result), 
		.zeroFlag(zeroFlag)
	);

	initial begin
		// Initialize Inputs
		num1 = 0;
		num2 = 0;
		operateType = 0;

		// Wait 100 ns for global reset to finish
		#100;
		num1=32'h00000001; num2=32'h00000002;operateType=3'b000;
		#100;
		num1=32'h00000001; num2=32'h00000002;operateType=3'b100;
		#100;
		num1=32'h00000001; num2=32'h00000002;operateType=3'b001;
		#100;
		num1=32'h00000001; num2=32'h00000002;operateType=3'b101;
		#100;
		num1=32'h00000001; num2=32'h00000002;operateType=3'b010;
		#100;
		num1=32'h00000001; num2=32'h00000002;operateType=3'b110;
    //   3'b000 : result=num1+num2;
	// 3'b100 : result=num1-num2;
	// 3'b001 : result=num1&num2;
	// 3'b101 : result=num1|num2;
	// 3'b010 : result=num1^num2;
	// 3'b110 : result={num2[15:0],0};   
		// Add stimulus here

	end
      
endmodule

