`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 03:12:12 PM
// Design Name: 
// Module Name: bpa
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

module bpa(
    input cin,
    input [3:0] A,  
    input [3:0] B,  
    output [3:0] S, 
    output [3:0] C  
);

assign S[0] = (A[0]^B[0])^cin;
assign C[0] = (cin & (A[0]^B[0])) | (A[0] & B[0]);

assign S[1] = (A[1]^B[1])^C[0];
assign C[1] = (C[0] & (A[1]^B[1])) | (A[1] & B[1]);

assign S[2] = (A[2]^B[2])^C[1];
assign C[2] = (C[1] & (A[2]^B[2])) | (A[2] & B[2]);

assign S[3] = (A[3]^B[3])^C[2];
assign C[3] = (C[2] & (A[3]^B[3])) | (A[3] & B[3]);

endmodule

