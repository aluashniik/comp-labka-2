`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:31:42 PM
// Design Name: 
// Module Name: fullsub_tb
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


module fullsub_tb;

reg aa, bb, b_in;
wire d, b_out;

fullsub u_fullsub (
    .a(aa),
    .b(bb),
    .b_in(b_in),
    .d(d),
    .b_out(b_out)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial b_in = 1'b0;

always aa = #20 ~aa;
always bb = #40 ~bb;
always b_in = #80 ~b_in;

initial begin
#160
$finish;
end

endmodule
