`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 03:25:44 PM
// Design Name: 
// Module Name: fourbitdecade_tb
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

module fourbitdecade_tb;
    reg clk, rst; 
    wire [3:0] out; 

    fourbitdecade u_fourbitdecade (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    initial begin
        clk = 1'b1; 
        forever #50 clk = ~clk;
    end

    initial begin
        rst = 1'b1;      
        #100 rst = 1'b0; 
    end
endmodule




