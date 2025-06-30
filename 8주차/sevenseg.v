`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 03:03:59 PM
// Design Name: 
// Module Name: sevenseg
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


module sevenseg(
     input in_a,in_b,in_c,in_d,
     output out_a, out_b, out_c, out_d, out_e, out_f, out_g, out_Dp
    );
    assign out_a = (~in_b&~in_c&~in_d)|(~in_a&in_b&in_d)|(in_a&~in_c&~in_d)|(in_a&~in_b&~in_c)|(in_a&in_c&~in_d)|(~in_a&in_c)|(in_b&in_c);
    assign out_b = (~in_a&~in_c&~in_d)|(~in_a&in_c&in_d)|(~in_b&in_c&~in_d)|(in_a&~in_c&in_d)|(in_a&~in_b&~in_c)|(~in_a&~in_b);
    assign out_c = (~in_a&~in_c)|(~in_a&in_d)|(~in_c&in_d)|(in_a&~in_b)|(~in_a&in_b);
    assign out_d = (~in_b&~in_c&~in_d)|(in_a&~in_c&~in_d)|(in_b&~in_c&in_d)|(~in_b&in_c&in_d)|(~in_a&~in_b&in_c)|(in_b&in_c&~in_d);
    assign out_e = (~in_b&~in_c&~in_d)|(in_a&in_b)|(in_c&~in_d)|(in_a&in_c);
    assign out_f = (~in_c&~in_d)|(~in_a&in_b&~in_c)|(in_a&~in_b)|(in_a&in_c&in_d)|(in_b&in_c&~in_d);
    assign out_g = (~in_a&in_b&~in_c)|(in_a&~in_b)|(in_a&in_d)|(~in_a&~in_b&in_c)|(in_c&~in_d);
    assign out_Dp = out_a|out_b|out_c|out_d|out_e|out_f|out_g;
endmodule
