`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jianping Shen
// 
// Create Date: 05/08/2021 05:42:41 PM
// Design Name: FFT_OLED
// Module Name: SPI_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// SPI controler for OLED
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SPI_ctrl(
    input clk,
    input rst_n,
    input [7:0] data_in,
    input data_rdy,
    output SCLK,
    output MOSI,
    output done,
    output busy
    );
    logic [3:0] cnt; // Count SCLK
    logic rst_cnt;
    logic [7:0] data_reg;
    logic [2:0] data_cnt;
    typedef enum reg[1:0]{IDLE, SEND, HOLD, FALL} state_t;
endmodule
