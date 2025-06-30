`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 03:05:08 PM
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;

reg aa, bb, ff;
wire AA, BB, CC, DD;

demux u_demux (
    .a(aa),
    .b(bb),
    .f(ff),
    .A(AA),
    .B(BB),
    .C(CC),
    .D(DD)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial ff = 1'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always ff = #100 ~ff;

initial begin
#800
$finish;
end

endmodule

