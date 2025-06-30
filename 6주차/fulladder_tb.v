`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:11:08 PM
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;

    reg aa, bb, c_in;
    wire s, c_out;

    fulladder u_test (
        .a(aa),
        .b(bb),
        .c_in(c_in),
        .s(s),
        .c_out(c_out)
    );

    initial begin
        aa = 1'b0;
        bb = 1'b0;
        c_in = 1'b0;
    end

    always @(aa or bb or c_in) begin
        aa <= #20 ~aa;
        bb <= #40 ~bb;
        c_in <= #80 ~c_in;
    end
    
    initial begin
        #160
        $finish;
    end

endmodule
