`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:48:54 02/11/2019 
// Design Name: 
// Module Name:    mux2x3 
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

module mux2x3 (a0,a1,s,y); // multiplexer, 3 bits
input [4:0] a0, a1; // inputs, 3 bits
input s; // input, 1 bit
output [4:0] y; // output, 3 bits
assign y = s ? a1 : a0; // if (s==1) y=a1; else y=a0;
endmodule