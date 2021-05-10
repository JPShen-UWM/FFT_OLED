`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2021 11:27:09 PM
// Design Name: 
// Module Name: oledCtrl_test_tb
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


module oledCtrl_test_tb(

    );
    reg clk, rst;
    reg A;
    wire oled_SCLK, oled_SDIN, oled_vbat, oled_rst_n;
    wire oled_dc_n;
    oledCtrl_test DUT_t(
    clk,
    rst,
    A,
    oled_SCLK,
    oled_SDIN,
    oled_vdd,
    oled_vbat,
    oled_rst_n,
    oled_dc_n
    );
    always #1 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        A = 0;
        #20;
        @(negedge clk) rst = 0;
        #100;
        A = 1;
        #100;
        A = 0;
        #100000000;
        A = 1;
        #100000000;
        $stop;
    end
    
endmodule
