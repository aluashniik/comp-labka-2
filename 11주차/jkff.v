`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 04:10:47 PM
// Design Name: 
// Module Name: jkff
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

module jkff(
    input wire j,
    input wire k,
    input wire clk,
    output reg q1,
    output reg q2
);

    initial begin
        q1 = 0;
        q2 = 1;
    end

    always @(posedge clk) begin
        if (j == 1 && k == 0) begin
            q1 <= 1;
            q2 <= 0;
        end
        else if (j == 0 && k == 1) begin
            q1 <= 0;
            q2 <= 1;
        end
        else if (j == 1 && k == 1) begin
            q1 <= ~q1;
            q2 <= ~q2;
        end
    end

endmodule
