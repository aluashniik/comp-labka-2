`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 04:01:06 PM
// Design Name: 
// Module Name: demorgan1stB_tb
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



module demorgan1stB_tb;

    reg aa, bb;
    wire e;
    
   demorgan1stB u_test (
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
