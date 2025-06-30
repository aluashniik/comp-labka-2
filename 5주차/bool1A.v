`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 02:30:56 PM
// Design Name: 
// Module Name: boolean
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

//bool_1 A)

module boolean(
     input a, b, c,
     output e
    );
    assign e = (~a&~b)|~c;
endmodule
