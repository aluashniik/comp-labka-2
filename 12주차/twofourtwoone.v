`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 05:09:01 PM
// Design Name: 
// Module Name: twofourtwoone
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

module fourbit2421 (
    input clk,          // Clock signal
    input rst,          // Reset signal
    output reg [4:0] out // 4-bit 2421 output
);

    // Always block to handle counter logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            out <= 4'b0000; // Reset to 0
        end else begin
            case (out)
                4'b0000: out <= 4'b0001; // 0 -> 1
                4'b0001: out <= 4'b0010; // 1 -> 2
                4'b0010: out <= 4'b0011; // 2 -> 3
                4'b0011: out <= 4'b0100; // 3 -> 4
                4'b0100: out <= 4'b1011; // 4 -> 5
                4'b1011: out <= 4'b1100; // 5 -> 6
                4'b1100: out <= 4'b1101; // 6 -> 7
                4'b1101: out <= 4'b1110; // 7 -> 8
                4'b1110: out <= 4'b1111; // 8 -> 9
                4'b1111: out <= 4'b0000; // 9 -> 0
                default: out <= 4'b0000; // Default case
            endcase
        end
    end

endmodule


