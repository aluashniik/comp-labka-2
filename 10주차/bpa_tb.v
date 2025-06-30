`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 03:15:56 PM
// Design Name: 
// Module Name: bpa_tb
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

module bpa_tb;

reg cin;
reg [3:0] A;  
reg [3:0] B;  
wire [3:0] C; 
wire [3:0] S; 

bpa u_bpa (
    .cin(cin),
    .A(A),
    .B(B),
    .S(S),
    .C(C)
);

initial begin
    cin = 1'b0;
    A = 4'b0000;  
    B = 4'b0000;  
end

always@(cin or A or B) begin
    cin <= #10 ~cin;
    A <= #20 ~A; 
    B <= #320 ~B; 
end

initial begin
    #5120
    $finish;
end

endmodule

