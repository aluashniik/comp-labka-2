`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 04:11:07 PM
// Design Name: 
// Module Name: jkff_tb
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

module jkff_tb;

    reg j, k, clk;
    wire q1, q2;

    jkff u_jkff (
        .j(j),
        .k(k),
        .clk(clk),
        .q1(q1),
        .q2(q2)
    );

    initial begin
        clk = 0;
        j = 0;
        k = 0;
    end

    always #25 clk = ~clk;

    initial begin
        #50 j = 1; k = 0;  
        #100 j = 0; k = 1; 
        #100 j = 1; k = 1; 
        #100 j = 0; k = 0; 
        #100 j = 1; k = 0; 
        #100 j = 1; k = 1; 
        #50 $finish;
    end
endmodule
