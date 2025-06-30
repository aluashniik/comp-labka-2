`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 04:06:32 PM
// Design Name: 
// Module Name: twobitcomp_tb
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


module twobitcomp_tb;

reg aa, bb, cc, dd;
wire e, f, g;

twobitcomp u_twobitcomp (
    .a(aa),
    .b(bb),  
    .c(cc),
    .d(dd),
    .e(e),
    .f(f),
    .g(g)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;

initial begin
#800
$finish;
end

endmodule
