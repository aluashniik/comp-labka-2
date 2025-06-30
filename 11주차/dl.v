`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 06:02:45 PM
// Design Name: 
// Module Name: dl
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

module dl(
    input wire d,      
    input wire clk,    
    output reg q1,      
    output reg q2      
);

    initial begin
        q1 = 0;
        q2 = 1;
    end

    always @(*) begin
        if (clk) begin
            q1 <= d;
            q2 <= ~d;
        end
    end

endmodule

