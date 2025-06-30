`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:41:20 PM
// Design Name: 
// Module Name: rc_tb
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


module rc_tb;
    reg clk, rst; 
    wire [3:0] out; 

    rc u_rc (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    initial begin
        clk <= 1'b0; 
        rst <= 1'b0;
    end

    initial begin
       #300 rst = 1'b1;
       #50 rst = 1'b0;
    end
    
    always begin
       #10 clk <= ~clk;
    end
    always begin
       #100 rst <= ~rst;
    end
    initial begin
       #1000
       $finish;
    end
endmodule 
