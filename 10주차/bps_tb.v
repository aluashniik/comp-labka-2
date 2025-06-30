`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 03:36:04 PM
// Design Name: 
// Module Name: bps_tb
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

module bps_tb;
reg bin;
reg [3:0] A, B;  
wire [3:0] b, D;  

bps u_bps (
    .bin(bin),
    .A(A),
    .B(B),
    .b(b),
    .D(D)
);

initial begin
    bin = 1'b0;
    A = 4'b0000;
    B = 4'b0000;
end

always@(bin or A or B) begin
    bin <= #10 ~bin;
    A <= #20 ~A;
    B <= #40 ~B;
end


initial begin
    #5120;
    $finish;
end

endmodule
