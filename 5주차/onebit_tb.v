`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 02:48:48 PM
// Design Name: 
// Module Name: onebit_tb
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
module onebit_tb;

    reg aa, bb;
    wire e, f, g, h;
    
   onebit u_test (
      .a(aa),
      .b(bb),
      .e(e),
      .f(f),
      .g(g),
      .h(h)
    );

    initial begin 
        aa = 1'b0;
        bb = 1'b0;
     end

     always@(aa or bb) begin
     aa <= #50 ~aa; 
     bb <= #100 ~bb;
     end

    initial begin
    #1000;
    $finish;
    end

endmodule
