`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:17:52 PM
// Design Name: 
// Module Name: dff_tb
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
module dff_tb;
    reg d, clk;
    wire q1, q2;

    dff u_dff (
        .d(d),
        .clk(clk),
        .q1(q1),
        .q2(q2)
    );

    initial begin
        clk = 1'b0;
        d = 1'b0;
    end

    always #25 clk = ~clk;

    initial begin
        #50 d = 1;
        #100 d = 0;
        #100 d = 1;
        #100 d = 0;
        #50 $finish;
    end

endmodule
