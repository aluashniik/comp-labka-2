`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 05:09:41 PM
// Design Name: 
// Module Name: codeconverter_tb
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


module codeconverter_tb;
reg a, b, c, d;
wire e, f, g, h;

codeconvert u_codeconvert(
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e ),
    .f(f ),
    .g(g ),
    .h(h )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always@(a or b or c or d) begin
    a <= #20 ~a;
    b <= #40 ~b;
    c <= #80 ~c;
    d <= #160 ~d;
end

initial begin
    #320
    $finish;
end

endmodule