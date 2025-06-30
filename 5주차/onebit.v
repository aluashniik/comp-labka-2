`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 02:46:47 PM
// Design Name: 
// Module Name: onebit
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


module onebit(
     input a, b,
     output e, f, g, h
    );
    assign e=~(a^b);
    assign f=a^b;
    assign g=a&~b;
    assign h=~a&b;
endmodule
