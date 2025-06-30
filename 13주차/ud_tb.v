`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2024 12:34:29 PM
// Design Name: 
// Module Name: ud_tb
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
module ud_tb;
    reg clk, rst, ud;
    wire [3:0] out;

    ud ud_rc (
        .clk(clk),
        .rst(rst),
        .ud(ud),
        .out(out)
    );

    initial begin
        clk = 1'b0;
        ud = 1'b0;
        rst = 1'b0;
        forever #10 clk = ~clk; // 10ns?? ?? ??
    end

    initial begin
        #700 rst = ~rst;   // ?? ???
        #50 rst = ~rst;    // ?? ????
    end

    always #300 ud = ~ud; // 300ns?? ?/?? ?? ??
endmodule