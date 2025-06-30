`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 04:04:59 PM
// Design Name: 
// Module Name: twobitcomp
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


module twobitcomp(
     input a, b, c, d,
     output e, f, g
    );
    assign e = (a & ~c & d) | (a & b & ~d) | (b & ~c & ~d) | (a & ~c & ~d);
    assign f = (~a & b & ~c & d) | (a & b & c & d) | (a & ~b & c & ~d) | (~a & ~b & ~c & ~d);
    assign g = (~a & b & c) | (~a & ~b & d) | (~a & ~b & c) | (~b & c & d);

endmodule
