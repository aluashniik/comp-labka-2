`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 06:09:10 PM
// Design Name: 
// Module Name: dl_tb
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

module dl_tb;

    reg d, clk;
    wire q1, q2;

    dl u_dl (
        .d(d),
        .clk(clk),
        .q1(q1),
        .q2(q2)
    );

    initial begin
        clk = 0;
        d = 0;
    end

    always #10 clk = ~clk;

    initial begin
        #5 d = 1;        
        #20 d = 0;       
        #15 d = 1;       
        #20 d = 0;       
        #10 $finish;
    end
endmodule

