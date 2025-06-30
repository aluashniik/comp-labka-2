`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 05:36:28 PM
// Design Name: 
// Module Name: rsl_tb
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
module rsl_tb;

    reg s, r;
    wire q1, q2;

    rsl u_rsl (
        .s(s),
        .r(r),
        .q1(q1),
        .q2(q2)
    );

    initial begin
        s = 0; r = 0;
        #50 s = 1; r = 0;  
        #50 s = 0; r = 1;  
        #50 s = 0; r = 0;  
        #50 s = 1; r = 1;  
        #50 s = 0; r = 0;  
        #50 s = 1; r = 0;  
        #50 s = 0; r = 1;  
        #50 $finish;
    end

endmodule
