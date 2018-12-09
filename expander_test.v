`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:32:37 12/09/2018
// Design Name:   expander
// Module Name:   /home/yapie/github/cpu/expander_test.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: expander
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module expander_test;

	// Inputs
	reg [15:0] input1;

	// Outputs
	wire [31:0] output1;

	// Instantiate the Unit Under Test (UUT)
	expander uut (
		.input1(input1), 
		.output1(output1)
	);

	initial begin
		// Initialize Inputs
		input1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        input1=16'h000f;
		#100;
		  input1=16'h7aff;
		#100;
		  input1=16'h8aff;
		// Add stimulus here

	end
      
endmodule

