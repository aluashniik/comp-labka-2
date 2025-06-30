`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:16:47 PM
// Design Name: 
// Module Name: dff
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

module dff(
    input d,
    input clk,
    output reg q1,
    output reg q2
);

    initial begin
        q1 = 0;
        q2 = 1;
    end

    always @(posedge clk) begin
        q1 <= d;
        q2 <= ~d;
    end

endmodule
