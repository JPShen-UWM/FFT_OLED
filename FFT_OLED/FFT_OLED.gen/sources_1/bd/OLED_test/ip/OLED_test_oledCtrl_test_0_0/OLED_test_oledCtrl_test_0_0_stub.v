// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  9 23:49:57 2021
// Host        : DESKTOP-FMMQV0S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Xilinx/Project/FFT_OLED/FFT_OLED/FFT_OLED.gen/sources_1/bd/OLED_test/ip/OLED_test_oledCtrl_test_0_0/OLED_test_oledCtrl_test_0_0_stub.v
// Design      : OLED_test_oledCtrl_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "oledCtrl_test,Vivado 2020.2" *)
module OLED_test_oledCtrl_test_0_0(clk, rst, A, oled_SCLK, oled_SDIN, oled_vdd, 
  oled_vbat, oled_rst_n, oled_dc_n)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,A,oled_SCLK,oled_SDIN,oled_vdd,oled_vbat,oled_rst_n,oled_dc_n" */;
  input clk;
  input rst;
  input A;
  output oled_SCLK;
  output oled_SDIN;
  output oled_vdd;
  output oled_vbat;
  output oled_rst_n;
  output oled_dc_n;
endmodule
