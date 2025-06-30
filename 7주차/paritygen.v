`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 03:42:29 PM
// Design Name: 
// Module Name: paritygen
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


module paritygen(
   input a, b, c, d,
   output e
);
assign e = (~a & b & c & d) | (~a & b & ~c & ~d) | (a & b & ~c & d) | (a & b & c & ~d) | (a & ~b & c & d) | (a & ~b & ~c & ~d) | (~a & ~b & ~c & d) | (~a & ~b & c & ~d);
endmodule
