`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:52:26 02/11/2019 
// Design Name: 
// Module Name:    mux2x32 
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
module mux2x32 (a0,a1,s,y); // multiplexer, 32 bits
input [31:0] a0, a1; // inputs, 32 bits
input s; // input, 1 bit
output [31:0] y; // output, 32 bits
assign y = s ? a1 : a0; // if (s==1) y=a1; else y=a0;
endmodule