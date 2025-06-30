`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 03:04:14 PM
// Design Name: 
// Module Name: demux
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


module demux(a, b, f, A, B, C, D);
   
   input a, b, f;
   
   output A, B, C, D;
   
   assign A=(~a)&(~b)&(f);
   assign B=(~a)&(b)&(f);
   assign C=(a)&(~b)&(f);
   assign D=(a)&(b)&(f);
   
endmodule
