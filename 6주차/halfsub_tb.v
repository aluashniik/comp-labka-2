`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 03:20:16 PM
// Design Name: 
// Module Name: halfsub_tb
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

module halfsub_tb;
reg a,b;
wire e,bor;

halfsub u_halfsub (
    .a(a ),
    .b(b ),
    .e(e),
    .bor(bor)
);

initial begin
    a = 1'b0;
    b = 1'b0;
end

always@(a or b) begin
    a <= #20 ~a;
    b <= #40 ~b;
end

initial begin
    #80
    $finish;
end

endmodule
