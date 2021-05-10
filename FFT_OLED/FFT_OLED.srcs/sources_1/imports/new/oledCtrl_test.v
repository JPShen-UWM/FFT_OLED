`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jianping Shen
// 
// Create Date: 05/09/2021 11:15:15 PM
// Design Name: 
// Module Name: oledCtrl_test
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


module oledCtrl_test(
    input clk,
    input rst,
    input A,
    output oled_SCLK,
    output oled_SDIN,
    output oled_vdd,
    output oled_vbat,
    output oled_rst_n,
    output oled_dc_n
    );
    wire rst_n;
    assign rst_n = ~rst;
    
    debouncer DEB(
    .clk(clk),
    .A(A),
    .rst_n(rst_n),
    .B(switch)
    );
    
    oledCtrl DUT(
    .clk(clk),
    .rst_n(rst_n),
    .switch(switch),
    .oled_SCLK(oled_SCLK),
    .oled_SDIN(oled_SDIN),
    .oled_vdd(oled_vdd),
    .oled_vbat(oled_vbat),
    .oled_rst_n(oled_rst_n),
    .oled_dc_n(oled_dc_n)
    );
endmodule
