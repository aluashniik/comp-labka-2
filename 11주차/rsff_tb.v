`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:01:27 PM
// Design Name: 
// Module Name: rsff_tb
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
module rsff_tb;

    reg s, r, clk;
    wire q1, q2;

    rsff u_rsff (
        .s(s),
        .r(r),
        .clk(clk),
        .q1(q1),
        .q2(q2)
    );

    initial begin
        clk = 1'b0;
        s = 1'b0;
        r = 1'b0;
    end

    always #25 clk = ~clk;

    initial begin
        #50 s = 1; r = 0;
        #100 s = 0; r = 1;
        #100 s = 0; r = 0;
        #100 s = 1; r = 0;
        #100 s = 0; r = 1;
        #100 s = 0; r = 0;
        #50 $finish;
    end

endmodule

