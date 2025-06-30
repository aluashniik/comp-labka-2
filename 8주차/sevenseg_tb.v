`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 03:04:38 PM
// Design Name: 
// Module Name: sevenseg_tb
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


module sevenseg_tb;
reg in_a, in_b, in_c, in_d;
wire out_a, out_b, out_c, out_d, out_e, out_f, out_g, out_Dp;

sevenseg u_sevenseg(
    .in_a(in_a),
    .in_b(in_b),
    .in_c(in_c),
    .in_d(in_d),
    .out_a(out_a),
    .out_b(out_b), 
    .out_c(out_c), 
    .out_d(out_d), 
    .out_e(out_e), 
    .out_f(out_f), 
    .out_g(out_g), 
    .out_Dp(out_Dp) 
);

initial in_a = 1'b0;
initial in_b = 1'b0;
initial in_c = 1'b0;
initial in_d = 1'b0;

always in_a = #800 ~in_a;
always in_b = #400 ~in_b;
always in_c = #200 ~in_c;
always in_d = #100 ~in_d;

initial begin
#1600
$finish;
end

endmodule
