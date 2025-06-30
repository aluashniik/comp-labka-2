`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:04:20 PM
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb;

    reg aa, bb;
    wire e, f;

    halfadder u_test (
        .a(aa),
        .b(bb),
        .e(e),
        .f(f)
    );

    initial begin
        aa = 1'b0;
        bb = 1'b0;
    end

    always @(aa or bb) begin
        aa <= #50 ~aa;
        bb <= #100 ~bb;
    end
    
   initial begin
   #1000
   $finish;
   end 
   
endmodule

