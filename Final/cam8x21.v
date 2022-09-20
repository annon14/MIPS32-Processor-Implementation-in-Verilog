`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:26:42 02/11/2019 
// Design Name: 
// Module Name:    cam8x21 
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

module cam8x21 (clk,pattern,wraddress,wren,maddress,mfound); // cam
input clk; // clock
input wren; // cam write enable
input [19:0] pattern; // vpn to be compared to all 8 lines
input [2:0] wraddress; // write address
output [2:0] maddress; // matched address
output mfound; // a match was found
reg [20:0] ram [0:7]; // ram 8-line * 21-bit: valid (1), vpn (20)
// write cam, update a line with pattern, valid bit <- 1
endmodule
