`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 03:21:46 PM
// Design Name: 
// Module Name: bool1B
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


//bool_1 B)

module bool1B(
     input a, b, c,
     output e
    );
    assign e = ~((a|b)&c);
endmodule
