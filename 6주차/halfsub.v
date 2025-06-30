`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:19:25 PM
// Design Name: 
// Module Name: halfsub
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


module halfsub(
    input a, b, 
    output e, bor
    );
  assign e=a^b;
  assign bor=(~a)&b;
endmodule
