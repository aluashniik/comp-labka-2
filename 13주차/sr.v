`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 11:55:06 AM
// Design Name: 
// Module Name: sr
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

module sr(clk, rst, in, out);
    input clk, rst, in;
    output reg [3:0] out;

    initial out = 4'b0;

    always @(negedge clk) begin
        if (rst) begin
            out <= 0; 
        end
        else begin
            out <= out >> 1; 
            out[3] <= in; 
        end
    end
endmodule

