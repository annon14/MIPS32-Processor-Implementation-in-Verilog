`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:24:42 02/11/2019 
// Design Name: 
// Module Name:    vpc 
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
module vpc (d,clk,clrn,e,q); // virtual program counter
input [31:0] d; // input d
input e; // e: enable
input clk, clrn; // clock and reset
output reg [31:0] q; // output q
always @(negedge clrn or posedge clk)
if (!clrn) // if reset
q <= 32'h8000_0000; // kseg0 starting address
else if (e) q <= d; // save d if enabled
endmodule

