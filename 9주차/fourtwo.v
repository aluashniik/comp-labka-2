`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 12:24:01 PM
// Design Name: 
// Module Name: fourtwo
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

module fourtwo(a, b, c, d, e0, e1);
   
   input a, b, c, d;
   
   output e0, e1;
   
    assign e0 = a|b;
    assign e1 = a|c;
   
endmodule
