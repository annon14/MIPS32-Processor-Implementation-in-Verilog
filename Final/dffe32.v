`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:55:39 02/11/2019 
// Design Name: 
// Module Name:    dffe32 
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
module dffe32 (d,clk,clrn,e,q); // a 32-bit register
input [31:0] d; // input d
input e; // e: enable
input clk, clrn; // clock and reset
output reg [31:0] q; // output q
always @(negedge clrn or posedge clk)
if (!clrn) q <= 0; // q = 0 if reset
else if (e) q <= d; // save d if enabled
endmodule

