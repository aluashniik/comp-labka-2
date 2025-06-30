`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:00:47 PM
// Design Name: 
// Module Name: rsff
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
module rsff(
    input wire s,     
    input wire r,     
    input wire clk,   
    output reg q1,     
    output reg q2     
);

    always @(posedge clk) begin
        if (s == 1 && r == 0) begin
            q1 <= 1;
            q2 <= 0;
        end
        else if (s == 0 && r == 1) begin
            q1 <= 0;
            q2 <= 1;
        end
        else if (s == 0 && r == 0) begin
            q1 <= q1;    
            q2 <= q2;
        end
        else if (s == 1 && r == 1) begin
            q1 <= 1'bx; 
            q2 <= 1'bx;
        end
    end

endmodule


