`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 05:08:46 PM
// Design Name: 
// Module Name: codeconvert
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module codeconvert(
   input a, b, c, d,
   output e, f, g, h
);
   
assign e = (a & ~c) | (b & d) | (b & c);
assign f = (a & ~b) | (b & c) | (b & ~c & ~d);
assign g = (a & ~b) | (b & ~c & d) | (~a & ~b & c);
assign h = d;
endmodule
