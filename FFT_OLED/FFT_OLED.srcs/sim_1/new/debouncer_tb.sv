`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jianping Shen
// 
// Create Date: 05/08/2021 05:14:05 PM
// Design Name: 
// Module Name: debouncer_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for debouncer
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module debouncer_tb(
    );
   logic A, B;
   logic clk;
   logic rst_n;
   
   debouncer DUT(clk, A, rst_n, B);
   always #1 clk = ~clk;
   initial begin
   clk = 0;
   A = 0;
   rst_n = 0;
   @(negedge clk);
   rst_n = 1;
   #10;
   A = 1;
   #3;
   A = 0;
   assert(B == 0);
   #10;
   A = 1;
   #50;
   assert(B == 1);
   #5;
   A = 0;
   #5;
   assert(B == 1);
   A = 1;
   #10;
   A = 0;
   #50;
   assert(B == 0);
   $stop;
   end
endmodule
