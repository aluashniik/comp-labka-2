`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 03:25:09 PM
// Design Name: 
// Module Name: fourbitdecade
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

module fourbitdecade (clk, rst, out);
    input clk;
    input rst;
    output reg [3:0] out;
  
    initial begin
        out = 4'b0000;
    end

    always @(posedge clk or posedge rst) begin
        if (rst == 4'b1)
            out <= 4'b0000;  
        else if (out == 4'b1001) 
            out <= 4'b0000;  
        else 
            out <= out + 1;  
    end
endmodule








