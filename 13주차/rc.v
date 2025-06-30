`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:40:46 PM
// Design Name: 
// Module Name: rc
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


module rc(clk, rst, out);
    input clk, rst;
    output reg [3:0] out;
    
    initial begin
       out = 4'b1;
     end

    always @(negedge clk) begin
        if (rst) begin
            out = 4'b1; 
        end
        else begin
        if(out[3]==1) begin
            out = 4'b1;
        end
        else begin
           //out <= {out[2:0],out[3]};
           out = out << 1;
        end
    end
    end
endmodule

