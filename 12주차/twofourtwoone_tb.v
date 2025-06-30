`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 05:09:43 PM
// Design Name: 
// Module Name: twofourtwoone_tb
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


module twofourtwoone_tb;
    reg clk, rst;           
    wire [3:0] out;         

    twofourtwoone u_twofourtwoone (
        .clk(clk),
        .rst(rst),
        .out(out)
    );
    
    initial begin
        clk = 1'b0;
        forever #25 clk = ~clk; 
    end
        
    initial begin
        rst = 1'b1;       
        #50 rst = 1'b0;    
    end
    
    initial begin
        #1000 $finish;    
    end
endmodule
