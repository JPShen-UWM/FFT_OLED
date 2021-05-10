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
    output logic done,
    output busy
    );
    logic [3:0] cnt; // Count SCLK
    logic rst_cnt;
    logic [7:0] data_reg;
    logic [2:0] data_cnt;
    logic shift, load, rst_data_cnt;
    typedef enum reg[1:0]{IDLE, FRONT, SHIFT, BACK} state_t;
    state_t state, nxt_state;
    
    assign busy = (state != IDLE);
    assign SCLK = (state == IDLE)? 1'b1: cnt[3];
    always_ff @(posedge clk) begin
        if(rst_cnt) cnt <= 4'b1011;
        else cnt <= cnt + 1;
    end
    
    always_ff @(posedge clk) begin
        if(!rst_n) state <= IDLE;
        else state <= nxt_state;
    end
    
    always_ff @(posedge clk) begin
        if(load) data_reg <= data_in;
        else if(shift) data_reg <= {data_reg[6:0], 1'b0};
    end
    assign MOSI = busy? data_reg[7]: 1'b0;
    
    always_ff @(posedge clk) begin
        if(rst_data_cnt) data_cnt <= 0;
        else if(shift) data_cnt <= data_cnt + 1;
    end
    
    always_comb begin
    nxt_state = state;
    shift = 0;
    rst_cnt = 0;
    done = 0;
    load = 0;
    rst_data_cnt = 0;
    case(state)
        IDLE: begin
            rst_cnt = 1;
            if(data_rdy) begin
                nxt_state = FRONT;
                load = 1;
                rst_data_cnt = 1;
            end
        end
        FRONT: begin
            if(&cnt) nxt_state = SHIFT;
        end
        SHIFT: begin
            if(cnt == 4'b0111) begin
                if(data_cnt == 7) nxt_state = BACK;
            end
            else if (&cnt) shift = 1;
        end
        BACK: begin
            if(&cnt) begin
                nxt_state = IDLE;
                done = 1;
            end
        end
    endcase
    end
endmodule
