`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2024 12:34:03 PM
// Design Name: 
// Module Name: ud
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

module ud(clk, rst, ud, out, w, disp);
    input clk, rst, ud;
    output w;
    output reg [3:0] out;
    output[6:0] disp;
    
    //output a, b, c, d, e, f, g, seg;
    initial begin
       out = 4'b0;
    end


    always @(negedge clk) begin
        if (rst) begin
            out = 0;
        end 
        else begin
        if (ud) begin
            out = out - 1; 
        end
        else begin
            out = out + 1; 
        end
    end
    end
    
    assign disp[0] = 1'b0;
        assign disp[1] = 1'b1;
        assign disp[2] = 1'b1;
        assign disp[3] = 1'b1;
        assign disp[4] = 1'b1;
        assign disp[5] = ~ud;
        assign disp[6] = ud;
    
    assign w = disp[0]|disp[1]|disp[2]|disp[3]|disp[4]|disp[5]|disp[6];
endmodule