`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:30:58 PM
// Design Name: 
// Module Name: fullsub
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


module fullsub(
    input a, b, b_in,
    output d, b_out 
    );
   
    assign d = a ^ b ^ b_in;
    assign b_out = (~(a ^ b) & b_in) | (~a & b);
endmodule
