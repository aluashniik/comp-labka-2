`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 11:55:22 AM
// Design Name: 
// Module Name: sr_tb
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


module sr_tb;
    reg clk, rst, in; 
    wire [3:0] out; 

    sr u_sr (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    initial begin
        clk = 1'b0; 
        rst = 1'b0;
        in = 1'b0;
        forever #10 clk = ~clk;
    end

    initial begin
       #300 rst = 1'b1;
       #50 rst = 1'b0;
    end
    
    initial begin
        #15 in = 1'b1;
        #20 in = 1'b1;
        #20 in = 1'b1;
        #40 in = 1'b1;
        #40 in = 1'b1;
        #20 in = 1'b1;
     end
     always #200 in = ~in;
endmodule 



