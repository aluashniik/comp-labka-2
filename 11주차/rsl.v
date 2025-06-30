`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 05:33:08 PM
// Design Name: 
// Module Name: rsl
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

module rsl(
    input wire s,
    input wire r,
    output wire q1,
    output wire q2
);

    assign q1 = ~(s & q2);
    assign q2 = ~(r & q1);

endmodule
