`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:32:04 02/11/2019 
// Design Name: 
// Module Name:    addsub32 
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

module addsub32 (a,b,sub,s); // 32-bit adder/subtracter
input [31:0] a, b; // inputs: a, b
input sub; // sub == 1: s = a - b
// sub == 0: s = a + b
output [31:0] s; // output sum s
// sub == 1: a - b = a + (-b) = a + not(b) + 1 = a + (b xor sub) + sub
// sub == 0: a + b = a + b = a + b + 0 = a + (b xor sub) + sub
wire [31:0] b_xor_sub = b ^ {32{sub}}; // (b xor sub)
// cla32 (a, b, ci, s);
cla32 as32 (a, b_xor_sub, sub, s); // b: (b xor sub); ci: sub
endmodule


