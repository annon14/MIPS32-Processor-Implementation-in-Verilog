`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:23:40 02/11/2019 
// Design Name: 
// Module Name:    ram8x24 
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
module ram8x24 (address,data,clk,we,q); // ram for tlb
input [2:0] address; // address
input [23:0] data; // data in
input clk; // clock
input we; // write enable
output [23:0] q; // data out
reg [23:0] ram [0:7]; // ram cells: 8 words * 24 bits
always @(posedge clk) begin
if (we) ram[address] <= data; // write ram
end
assign q = ram[address]; // read ram
endmodule
