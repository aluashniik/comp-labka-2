`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 01:38:33 PM
// Design Name: 
// Module Name: fourtwo_tb
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


module fourtwo_tb;

reg aa, bb, cc, dd;
wire e0, e1;

fourtwo u_fourtwo (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e0(e0),
    .e1(e1)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~bb;
always dd = #50 ~bb;

initial begin
#800
$finish;
end

endmodule
