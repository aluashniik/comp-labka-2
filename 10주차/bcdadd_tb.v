`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 02:27:59 PM
// Design Name: 
// Module Name: bcdadd_tb
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

module bcdadd_tb();

reg cin;
reg [3:0] a; 
reg [3:0] b; 
wire [3:0] sum; 
wire cout;

bcdadd u_bcdadd (
    .cin(cin),
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
);

initial begin
    cin = 1'b0;
    a = 4'b0000;
    b = 4'b0000;
end

always@(cin or a or b) begin
    cin <= #10 ~cin;
    a[0] <= #20 ~a[0];
    a[1] <= #40 ~a[1];
    a[2] <= #80 ~a[2];
    a[3] <= #160 ~a[3];
    b[0] <= #320 ~b[0];
    b[1] <= #640 ~b[1];
    b[2] <= #1280 ~b[2];
    b[3] <= #2560 ~b[3];
end

initial begin
    #5120
    $finish;
end


endmodule