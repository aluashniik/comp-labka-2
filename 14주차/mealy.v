`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 01:56:53 PM
// Design Name: 
// Module Name: mealy
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

module mealy(clk, in, reset, z, out);
    input clk, in, reset;
    output reg z;
    output reg [3:0] out;
    
    initial begin
        out = 4'b0000;
        z = 1'b0;
    end

    always @(posedge clk) begin
        if (reset == 1'b1) begin
            out = 4'b0000;
            z = 1'b0;
        end
        else begin
            out = out << 1;
            out[0] = in;
            if (in == 1 && out[3] == 1 && out[2] == 1 && out[1] == 0)
                z = 1'b1;
            else
                z = 1'b0;
        end
    end
endmodule

