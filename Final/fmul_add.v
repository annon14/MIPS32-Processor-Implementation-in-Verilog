`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:13 02/09/2019 
// Design Name: 
// Module Name:    fmul_add 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fmul_add (z_sum,z_carry,z); // fmul add
	input [39:0] z_sum;
	input [39:0] z_carry;
	output [47:8] z;
		assign z = z_sum + z_carry;
endmodule
