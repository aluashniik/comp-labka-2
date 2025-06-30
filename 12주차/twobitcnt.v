`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 03:11:52 PM
// Design Name: 
// Module Name: twobitcnt
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


module twobitcnt (
    input clk,     
    input rst,     
    output reg [1:0] out
);
  
    initial begin
        out = 2'b00;
    end
    
    always @(posedge clk) begin
        if (rst == 1'b1) 
            out <= 2'b00; 
        else
            out <= out + 2'b01; 
    end
endmodule


