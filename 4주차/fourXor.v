`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 03:57:18 PM
// Design Name: 
// Module Name: inv
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


module inv(

input a,b,c,d,
output e,f,g

    );
assign e=(~a&b) | (a&~b);
assign f=(~e&c) | (e&~c);
assign g=(~f&d) | (f&~d);
endmodule
