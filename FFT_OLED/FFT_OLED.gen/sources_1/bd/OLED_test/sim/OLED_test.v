//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun May  9 23:49:10 2021
//Host        : DESKTOP-FMMQV0S running 64-bit major release  (build 9200)
//Command     : generate_target OLED_test.bd
//Design      : OLED_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "OLED_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=OLED_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "OLED_test.hwdef" *) 
module OLED_test
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN OLED_test_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output oled_SCLK;
  output oled_SDIN;
  output oled_dc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.OLED_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.OLED_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output oled_rst_n;
  output oled_vbat;
  output oled_vdd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;

  wire A_0_1;
  wire clk_0_1;
  wire oledCtrl_test_0_oled_SCLK;
  wire oledCtrl_test_0_oled_SDIN;
  wire oledCtrl_test_0_oled_dc_n;
  wire oledCtrl_test_0_oled_rst_n;
  wire oledCtrl_test_0_oled_vbat;
  wire oledCtrl_test_0_oled_vdd;
  wire rst_0_1;

  assign A_0_1 = A;
  assign clk_0_1 = clk;
  assign oled_SCLK = oledCtrl_test_0_oled_SCLK;
  assign oled_SDIN = oledCtrl_test_0_oled_SDIN;
  assign oled_dc = oledCtrl_test_0_oled_dc_n;
  assign oled_rst_n = oledCtrl_test_0_oled_rst_n;
  assign oled_vbat = oledCtrl_test_0_oled_vbat;
  assign oled_vdd = oledCtrl_test_0_oled_vdd;
  assign rst_0_1 = rst;
  OLED_test_oledCtrl_test_0_0 oledCtrl_test_0
       (.A(A_0_1),
        .clk(clk_0_1),
        .oled_SCLK(oledCtrl_test_0_oled_SCLK),
        .oled_SDIN(oledCtrl_test_0_oled_SDIN),
        .oled_dc_n(oledCtrl_test_0_oled_dc_n),
        .oled_rst_n(oledCtrl_test_0_oled_rst_n),
        .oled_vbat(oledCtrl_test_0_oled_vbat),
        .oled_vdd(oledCtrl_test_0_oled_vdd),
        .rst(rst_0_1));
endmodule
