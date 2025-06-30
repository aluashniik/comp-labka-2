`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 03:23:07 PM
// Design Name: 
// Module Name: bool1B_tb
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

module bool1B_tb;

    reg aa, bb, cc;
    wire e;
    
   bool1B u_test (
      .a(aa),
      .b(bb),
      .c(cc),
      .e(e)
    );

    initial begin 
        aa = 1'b0;
        bb = 1'b0;
        cc = 1'b0;
     end

     always@(aa or bb or cc) begin
     aa <= #50 ~aa; 
     bb <= #100 ~bb;
     cc <= #150 ~cc;
     end

    initial begin
    #1000;
    $finish;
    end

endmodule