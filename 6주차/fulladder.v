`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:10:04 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a, b, c_in,
    output c_out, s
   );
   assign s = (a^b)^c_in;
   assign c_out = (c_in&&(a^b)) || (a&&b);
endmodule
