`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:30 12/09/2018
// Design Name:   select
// Module Name:   /home/yapie/github/cpu/select_test.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: select
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module select_test;

	// Inputs
	reg [4:0] input1;
	reg [4:0] input2;
	reg flag;

	// Outputs
	wire [4:0] selectedData;

	// Instantiate the Unit Under Test (UUT)
	select uut (
		.input1(input1), 
		.input2(input2), 
		.flag(flag), 
		.selectedData(selectedData)
	);

	initial begin
		// Initialize Inputs
		input1 = 0;
		input2 = 0;
		flag = 0;

		// Wait 100 ns for global reset to finish
		#100;
       input1=5'b00011;input2=5'b00111;flag=1'b1;
		#100
			input1=5'b00011;input2=5'b00111;flag=1'b0;
		// Add stimulus here

	end
      
endmodule

