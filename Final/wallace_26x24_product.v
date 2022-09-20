`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:32 02/10/2019 
// Design Name: 
// Module Name:    wallace_26x24_product 
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
module wallace_26x24_product (a,b,z); // 26*24 wt product
input [25:00] b; // 26 bits
input [23:00] a; // 24 bits
output [49:00] z; // product
wire [49:08] x; // sum high
wire [49:08] y; // carry high
wire [49:08] z_high; // product high
wire [07:00] z_low; // product low
wallace_26x24 wt_partial (a, b, x, y, z_low); // partial product
assign z_high = x + y;
assign z = {z_high,z_low}; // product
endmodule
