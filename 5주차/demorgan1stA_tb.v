`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 03:52:30 PM
// Design Name: 
// Module Name: demorgan1stA_tb
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


module demorgan1stA_tb;

    reg aa, bb;
    wire e;
    
   demorgan1stA u_test (
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
