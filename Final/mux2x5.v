`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:47:53 02/11/2019 
// Design Name: 
// Module Name:    mux2x5 
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

module mux2x5 (a0,a1,s,y); // multiplexer, 5 bits
input [4:0] a0, a1; // inputs, 5 bits
input s; // input, 1 bit
output [4:0] y; // output, 5 bits
assign y = s ? a1 : a0; // if (s==1) y=a1; else y=a0;
endmodule

