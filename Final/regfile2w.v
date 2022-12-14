`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:33:20 02/11/2019 
// Design Name: 
// Module Name:    regfile2w 
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
module regfile2w (rna,rnb,dx,wnx,wex,dy,wny,wey,clk,clrn,qa,qb);
input [31:0] dx, dy; // write data
input [4:0] rna, rnb, wnx, wny; // reg numbers
input wex, wey; // write enables
input clk, clrn; // clock and reset
output [31:0] qa, qb; // read data
reg [31:0] register [0:31]; // 32 32-bit registers
assign qa = register[rna]; // read port a
assign qb = register[rnb]; // read port b
integer i;
always @(posedge clk or negedge clrn) // write port
if (!clrn) begin
for (i=0; i<32; i=i+1)
register[i] <= 0; // reset
end else begin
if (wey) // write port y has a higher priority than x
register[wny] <= dy; // write port y
if (wex && (!wey || (wnx != wny)))
register[wnx] <= dx; // write port x
end
endmodule
