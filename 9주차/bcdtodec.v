`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 01:47:00 PM
// Design Name: 
// Module Name: bcdtodec
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


module bcdtodec(a0, a1, a2, a3, out1, out2, out3, out4, out5, out6, out7, out8, out9);

input a0, a1, a2, a3;
output out1, out2, out3, out4, out5, out6, out7, out8, out9;

assign out1 = (~a0)&(~a1)&(~a2)&(a3);
assign out2 = (~a0)&(~a1)&(a2)&(~a3);
assign out3 = (~a0)&(~a1)&(a2)&(a3);
assign out4 = (~a0)&(a1)&(~a2)&(~a3);
assign out5 = (~a0)&(a1)&(~a2)&(a3);
assign out6 = (~a0)&(a1)&(a2)&(~a3);
assign out7 = (~a0)&(a1)&(a2)&(a3);
assign out8 = (a0)&(~a1)&(~a2)&(~a3);
assign out9 = (a0)&(~a1)&(~a2)&(a3);

endmodule
