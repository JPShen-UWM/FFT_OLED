// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  9 23:49:57 2021
// Host        : DESKTOP-FMMQV0S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Xilinx/Project/FFT_OLED/FFT_OLED/FFT_OLED.gen/sources_1/bd/OLED_test/ip/OLED_test_oledCtrl_test_0_0/OLED_test_oledCtrl_test_0_0_sim_netlist.v
// Design      : OLED_test_oledCtrl_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OLED_test_oledCtrl_test_0_0,oledCtrl_test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "oledCtrl_test,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module OLED_test_oledCtrl_test_0_0
   (clk,
    rst,
    A,
    oled_SCLK,
    oled_SDIN,
    oled_vdd,
    oled_vbat,
    oled_rst_n,
    oled_dc_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN OLED_test_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input A;
  output oled_SCLK;
  output oled_SDIN;
  output oled_vdd;
  output oled_vbat;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 oled_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME oled_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output oled_rst_n;
  output oled_dc_n;

  wire \<const0> ;
  wire A;
  wire clk;
  wire oled_SCLK;
  wire oled_SDIN;
  wire oled_rst_n;
  wire oled_vbat;
  wire oled_vdd;
  wire rst;

  assign oled_dc_n = \<const0> ;
  GND GND
       (.G(\<const0> ));
  OLED_test_oledCtrl_test_0_0_oledCtrl_test inst
       (.A(A),
        .clk(clk),
        .oled_SCLK(oled_SCLK),
        .oled_SDIN(oled_SDIN),
        .oled_rst_n(oled_rst_n),
        .oled_vbat(oled_vbat),
        .oled_vdd(oled_vdd),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "SPI_ctrl" *) 
module OLED_test_oledCtrl_test_0_0_SPI_ctrl
   (oled_SCLK,
    E,
    oled_SDIN,
    oled_rst_n,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[0]_0 ,
    Q,
    switch,
    oled_vbat,
    rst,
    clk);
  output oled_SCLK;
  output [0:0]E;
  output oled_SDIN;
  output oled_rst_n;
  output \FSM_sequential_state_reg[3] ;
  input \FSM_sequential_state_reg[0]_0 ;
  input [3:0]Q;
  input switch;
  input oled_vbat;
  input rst;
  input clk;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[3] ;
  wire [3:0]Q;
  wire clk;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \data_cnt[0]_i_1_n_0 ;
  wire \data_cnt[1]_i_1_n_0 ;
  wire \data_cnt[2]_i_1_n_0 ;
  wire [7:7]data_reg;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire load;
  wire oled_SCLK;
  wire oled_SDIN;
  wire oled_rst_n;
  wire oled_rst_n_INST_0_i_1_n_0;
  wire oled_vbat;
  wire p_0_in;
  wire [2:0]p_0_in__0;
  wire [6:0]p_1_in;
  wire rst;
  wire [2:0]sel0;
  wire shift;
  wire [1:0]state;
  wire switch;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(rst),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state[0]),
        .I3(rst),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(p_0_in),
        .I2(sel0[2]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(load),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state[0]),
        .I1(p_0_in),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0003BAAA)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(E));
  LUT5 #(
    .INIT(32'h3033AF3A)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(switch),
        .I1(oled_rst_n_INST_0_i_1_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,FRONT:01,SHIFT:10,BACK:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:00,FRONT:01,SHIFT:10,BACK:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_2 
       (.I0(p_0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_2_n_0 ));
  FDSE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .S(\cnt[3]_i_1_n_0 ));
  FDSE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .S(\cnt[3]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDSE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[3]_i_2_n_0 ),
        .Q(p_0_in),
        .S(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \data_cnt[0]_i_1 
       (.I0(sel0[0]),
        .I1(shift),
        .I2(load),
        .O(\data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \data_cnt[1]_i_1 
       (.I0(sel0[1]),
        .I1(shift),
        .I2(sel0[0]),
        .I3(load),
        .O(\data_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \data_cnt[2]_i_1 
       (.I0(sel0[2]),
        .I1(shift),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(load),
        .O(\data_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \data_cnt[2]_i_2 
       (.I0(p_0_in),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(state[1]),
        .I5(state[0]),
        .O(shift));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \data_cnt[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(state[1]),
        .I5(state[0]),
        .O(load));
  FDRE \data_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_cnt[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \data_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_cnt[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \data_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_cnt[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(state[1]),
        .I4(state[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h92FF9200)) 
    \data_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(load),
        .I4(\data_reg_reg_n_0_[0] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hFEDC)) 
    \data_reg[2]_i_1 
       (.I0(shift),
        .I1(load),
        .I2(\data_reg_reg_n_0_[2] ),
        .I3(\data_reg_reg_n_0_[1] ),
        .O(\data_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h92FF9200)) 
    \data_reg[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(load),
        .I4(\data_reg_reg_n_0_[2] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[4]_i_1 
       (.I0(\data_reg_reg_n_0_[3] ),
        .I1(load),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hFEDC)) 
    \data_reg[5]_i_1 
       (.I0(shift),
        .I1(load),
        .I2(\data_reg_reg_n_0_[5] ),
        .I3(\data_reg_reg_n_0_[4] ),
        .O(\data_reg[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[6]_i_1 
       (.I0(shift),
        .I1(load),
        .O(\data_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[6]_i_2 
       (.I0(\data_reg_reg_n_0_[5] ),
        .I1(load),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEDC)) 
    \data_reg[7]_i_1 
       (.I0(shift),
        .I1(load),
        .I2(data_reg),
        .I3(\data_reg_reg_n_0_[6] ),
        .O(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[0] 
       (.C(clk),
        .CE(\data_reg[6]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_reg_reg[1] 
       (.C(clk),
        .CE(\data_reg[6]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\data_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_reg_reg[3] 
       (.C(clk),
        .CE(\data_reg[6]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\data_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_reg_reg[4] 
       (.C(clk),
        .CE(\data_reg[6]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\data_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_reg_reg[6] 
       (.C(clk),
        .CE(\data_reg[6]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\data_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[7]_i_1_n_0 ),
        .Q(data_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    oled_SCLK_INST_0
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .O(oled_SCLK));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    oled_SDIN_INST_0
       (.I0(data_reg),
        .I1(state[0]),
        .I2(state[1]),
        .O(oled_SDIN));
  LUT5 #(
    .INIT(32'h0101FFFD)) 
    oled_rst_n_INST_0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(oled_rst_n_INST_0_i_1_n_0),
        .I4(Q[3]),
        .O(oled_rst_n));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    oled_rst_n_INST_0_i_1
       (.I0(state[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(p_0_in),
        .I5(state[0]),
        .O(oled_rst_n_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF00000300)) 
    oled_vbat_i_1
       (.I0(oled_rst_n_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(oled_vbat),
        .O(\FSM_sequential_state_reg[3] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module OLED_test_oledCtrl_test_0_0_debouncer
   (switch,
    A,
    clk,
    rst);
  output switch;
  input A;
  input clk;
  input rst;

  wire A;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2__0_n_0 ;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire [3:0]counter_reg;
  wire [3:1]p_0_in;
  wire rst;
  wire rst_counter;
  wire [0:0]state;
  wire switch;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBA2A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(A),
        .I1(switch),
        .I2(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I3(state),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(switch),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(state),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .O(\FSM_sequential_state[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "RISE:01,FALL:10,HOLD:11,IDLE:00" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state));
  (* FSM_ENCODED_STATES = "RISE:01,FALL:10,HOLD:11,IDLE:00" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(switch));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h24)) 
    \counter[3]_i_1 
       (.I0(switch),
        .I1(A),
        .I2(state),
        .O(rst_counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_2 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .O(p_0_in[3]));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter_reg[0]),
        .R(rst_counter));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(counter_reg[1]),
        .R(rst_counter));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(counter_reg[2]),
        .R(rst_counter));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(counter_reg[3]),
        .R(rst_counter));
endmodule

(* ORIG_REF_NAME = "delay100ms" *) 
module OLED_test_oledCtrl_test_0_0_delay100ms
   (\count_reg[2]_0 ,
    \FSM_sequential_state_reg[0] ,
    clk,
    rst,
    Q,
    oled_vdd_reg,
    oled_vdd_reg_0,
    oled_vdd);
  output \count_reg[2]_0 ;
  output \FSM_sequential_state_reg[0] ;
  input clk;
  input rst;
  input [3:0]Q;
  input oled_vdd_reg;
  input oled_vdd_reg_0;
  input oled_vdd;

  wire \FSM_sequential_state_reg[0] ;
  wire [3:0]Q;
  wire clk;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [23:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire oled_vdd;
  wire oled_vdd_i_10_n_0;
  wire oled_vdd_i_5_n_0;
  wire oled_vdd_i_6_n_0;
  wire oled_vdd_i_7_n_0;
  wire oled_vdd_i_8_n_0;
  wire oled_vdd_i_9_n_0;
  wire oled_vdd_reg;
  wire oled_vdd_reg_0;
  wire rst;
  wire [3:3]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h10040000)) 
    \count[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\count_reg[2]_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[0]_i_3 
       (.I0(count_reg[3]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[0]_i_4 
       (.I0(count_reg[2]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[0]_i_5 
       (.I0(count_reg[1]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044000)) 
    \count[0]_i_6 
       (.I0(count_reg[0]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[20]_i_2 
       (.I0(count_reg[23]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[20]_i_3 
       (.I0(count_reg[22]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[20]_i_4 
       (.I0(count_reg[21]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[20]_i_5 
       (.I0(count_reg[20]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088000)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .I1(\count_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\count[8]_i_5_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_2_n_0 }),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 }));
  FDCE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDCE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]));
  FDCE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]));
  FDCE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]));
  FDCE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3],\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDCE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]));
  FDCE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]));
  FDCE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    oled_vdd_i_1
       (.I0(oled_vdd_reg),
        .I1(oled_vdd_reg_0),
        .I2(\count_reg[2]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(oled_vdd),
        .O(\FSM_sequential_state_reg[0] ));
  LUT4 #(
    .INIT(16'h0004)) 
    oled_vdd_i_10
       (.I0(count_reg[14]),
        .I1(count_reg[9]),
        .I2(count_reg[11]),
        .I3(count_reg[18]),
        .O(oled_vdd_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    oled_vdd_i_4
       (.I0(oled_vdd_i_5_n_0),
        .I1(oled_vdd_i_6_n_0),
        .I2(oled_vdd_i_7_n_0),
        .I3(oled_vdd_i_8_n_0),
        .I4(oled_vdd_i_9_n_0),
        .I5(oled_vdd_i_10_n_0),
        .O(\count_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    oled_vdd_i_5
       (.I0(count_reg[2]),
        .I1(count_reg[16]),
        .I2(count_reg[20]),
        .I3(count_reg[1]),
        .O(oled_vdd_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    oled_vdd_i_6
       (.I0(count_reg[22]),
        .I1(count_reg[0]),
        .I2(count_reg[15]),
        .I3(count_reg[19]),
        .O(oled_vdd_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    oled_vdd_i_7
       (.I0(count_reg[21]),
        .I1(count_reg[4]),
        .I2(count_reg[10]),
        .I3(count_reg[13]),
        .O(oled_vdd_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    oled_vdd_i_8
       (.I0(count_reg[12]),
        .I1(count_reg[5]),
        .I2(count_reg[3]),
        .I3(count_reg[8]),
        .O(oled_vdd_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    oled_vdd_i_9
       (.I0(count_reg[23]),
        .I1(count_reg[7]),
        .I2(count_reg[6]),
        .I3(count_reg[17]),
        .O(oled_vdd_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "oledCtrl" *) 
module OLED_test_oledCtrl_test_0_0_oledCtrl
   (oled_vdd,
    oled_vbat,
    oled_SCLK,
    oled_SDIN,
    oled_rst_n,
    clk,
    rst,
    switch);
  output oled_vdd;
  output oled_vbat;
  output oled_SCLK;
  output oled_SDIN;
  output oled_rst_n;
  input clk;
  input rst;
  input switch;

  wire DELAY_n_0;
  wire DELAY_n_1;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire OLED_SC_n_1;
  wire OLED_SC_n_4;
  wire clk;
  wire [2:0]nxt_state;
  wire oled_SCLK;
  wire oled_SDIN;
  wire oled_rst_n;
  wire oled_vbat;
  wire oled_vdd;
  wire oled_vdd_i_2_n_0;
  wire oled_vdd_i_3_n_0;
  wire rst;
  wire [3:0]state;
  wire switch;

  OLED_test_oledCtrl_test_0_0_delay100ms DELAY
       (.\FSM_sequential_state_reg[0] (DELAY_n_1),
        .Q(state),
        .clk(clk),
        .\count_reg[2]_0 (DELAY_n_0),
        .oled_vdd(oled_vdd),
        .oled_vdd_reg(oled_vdd_i_2_n_0),
        .oled_vdd_reg_0(oled_vdd_i_3_n_0),
        .rst(rst));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(state[3]),
        .I1(state[0]),
        .O(nxt_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .O(nxt_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(nxt_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(OLED_SC_n_1),
        .CLR(rst),
        .D(nxt_state[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(OLED_SC_n_1),
        .CLR(rst),
        .D(nxt_state[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(OLED_SC_n_1),
        .CLR(rst),
        .D(nxt_state[2]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(OLED_SC_n_1),
        .CLR(rst),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state[3]));
  OLED_test_oledCtrl_test_0_0_SPI_ctrl OLED_SC
       (.E(OLED_SC_n_1),
        .\FSM_sequential_state_reg[0]_0 (DELAY_n_0),
        .\FSM_sequential_state_reg[3] (OLED_SC_n_4),
        .Q(state),
        .clk(clk),
        .oled_SCLK(oled_SCLK),
        .oled_SDIN(oled_SDIN),
        .oled_rst_n(oled_rst_n),
        .oled_vbat(oled_vbat),
        .rst(rst),
        .switch(switch));
  FDCE oled_vbat_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(OLED_SC_n_4),
        .Q(oled_vbat));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    oled_vdd_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(switch),
        .O(oled_vdd_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0018)) 
    oled_vdd_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(oled_vdd_i_3_n_0));
  FDCE oled_vdd_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(DELAY_n_1),
        .Q(oled_vdd));
endmodule

(* ORIG_REF_NAME = "oledCtrl_test" *) 
module OLED_test_oledCtrl_test_0_0_oledCtrl_test
   (oled_SCLK,
    oled_SDIN,
    oled_rst_n,
    oled_vdd,
    oled_vbat,
    A,
    clk,
    rst);
  output oled_SCLK;
  output oled_SDIN;
  output oled_rst_n;
  output oled_vdd;
  output oled_vbat;
  input A;
  input clk;
  input rst;

  wire A;
  wire clk;
  wire oled_SCLK;
  wire oled_SDIN;
  wire oled_rst_n;
  wire oled_vbat;
  wire oled_vdd;
  wire rst;
  wire switch;

  OLED_test_oledCtrl_test_0_0_debouncer DEB
       (.A(A),
        .clk(clk),
        .rst(rst),
        .switch(switch));
  OLED_test_oledCtrl_test_0_0_oledCtrl DUT
       (.clk(clk),
        .oled_SCLK(oled_SCLK),
        .oled_SDIN(oled_SDIN),
        .oled_rst_n(oled_rst_n),
        .oled_vbat(oled_vbat),
        .oled_vdd(oled_vdd),
        .rst(rst),
        .switch(switch));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
