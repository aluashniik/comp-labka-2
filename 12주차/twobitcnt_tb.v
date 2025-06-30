`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 03:12:32 PM
// Design Name: 
// Module Name: twobitcnt_tb
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

module twobitcnt_tb;
    reg clk, rst; 
    wire [1:0] out; 

    twobitcnt u_twobitcnt (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    initial begin
        clk = 1'b0; 
        forever #50 clk = ~clk;
    end

    initial begin
        rst = 1'b1;      
        #100 rst = 1'b0; 
    end
endmodule


