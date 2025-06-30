`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 01:57:31 PM
// Design Name: 
// Module Name: mealy_tb
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

module mealy_tb;
    reg clk, in, reset;   
    wire [3:0] out;       
    wire z;

    mealy u_mealy (
        .clk(clk),
        .reset(reset),
        .in(in),        
        .z(z),          
        .out(out)       
    );

    initial begin
        clk = 1'b0; 
        forever #10 clk = ~clk;
    end

    initial begin
        in = 1'b0;
        #15 in = 1'b1;
        #20 in = 1'b1;
        #20 in = 1'b0;
        #20 in = 1'b1;
        #20 in = 1'b0;
        #20 in = 1'b1;
        #20 in = 1'b0;
        #20 in = 1'b1;
    end

    initial begin
        reset = 1'b0;
        #5 reset = 1'b1;
        #20 reset = 1'b0;
    end

    initial begin
        #500;
        $finish;
    end
endmodule

