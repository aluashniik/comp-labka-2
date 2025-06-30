`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 01:47:57 PM
// Design Name: 
// Module Name: bcdtodec_tb
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


module bcdtodec_tb;

reg a0, a1, a2, a3;
wire o1, o2, o3, o4, o5, o6, o7, o8, o9; 

bcdtodec u_bcdtodec(
     .a0(a0),
     .a1(a1),
     .a2(a2),
     .a3(a3),
     .out1(o1),
     .out2(o2),
     .out3(o3),
     .out4(o4),
     .out5(o5),
     .out6(o6),
     .out7(o7),
     .out8(o8),
     .out9(o9)
);

initial a0 = 1'b0;
initial a1 = 1'b0;
initial a2 = 1'b0;
initial a3 = 1'b0;

always a0 = #400 ~a0;
always a1 = #200 ~a1;
always a2 = #100 ~a2;
always a3 = #50 ~a3;

initial begin
#800
$finish;
end

endmodule
