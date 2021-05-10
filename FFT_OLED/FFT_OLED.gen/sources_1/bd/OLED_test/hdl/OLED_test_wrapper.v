//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun May  9 23:49:10 2021
//Host        : DESKTOP-FMMQV0S running 64-bit major release  (build 9200)
//Command     : generate_target OLED_test_wrapper.bd
//Design      : OLED_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OLED_test_wrapper
   (A,
    clk,
    oled_SCLK,
    oled_SDIN,
    oled_dc,
    oled_rst_n,
    oled_vbat,
    oled_vdd,
    rst);
  input A;
  input clk;
  output oled_SCLK;
  output oled_SDIN;
  output oled_dc;
  output oled_rst_n;
  output oled_vbat;
  output oled_vdd;
  input rst;

  wire A;
  wire clk;
  wire oled_SCLK;
  wire oled_SDIN;
  wire oled_dc;
  wire oled_rst_n;
  wire oled_vbat;
  wire oled_vdd;
  wire rst;

  OLED_test OLED_test_i
       (.A(A),
        .clk(clk),
        .oled_SCLK(oled_SCLK),
        .oled_SDIN(oled_SDIN),
        .oled_dc(oled_dc),
        .oled_rst_n(oled_rst_n),
        .oled_vbat(oled_vbat),
        .oled_vdd(oled_vdd),
        .rst(rst));
endmodule
