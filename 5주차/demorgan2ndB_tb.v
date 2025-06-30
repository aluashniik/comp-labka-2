`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 04:09:22 PM
// Design Name: 
// Module Name: demorgan2ndB_tb
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

module demorgan2ndB_tb;

    reg aa, bb;
    wire e;
    
   demorgan2ndB u_test (
      .a(aa),
      .b(bb),
      .e(e)
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
