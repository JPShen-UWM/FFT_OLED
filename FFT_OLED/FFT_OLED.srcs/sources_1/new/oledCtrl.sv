`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jianping Shen
// 
// Create Date: 05/09/2021 01:51:22 PM
// Design Name: 
// Module Name: oledCtrl
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


module oledCtrl(
    input clk,
    input rst_n,
    input switch,
    output logic oled_SCLK,
    output logic oled_SDIN,
    output logic oled_vdd,
    output logic oled_vbat,
    output logic oled_rst_n,
    output logic oled_dc_n
    );
    
    logic [7:0] spi_data;
    logic spi_data_rdy;
    logic spi_done, spi_busy;
    logic delay_en;
    logic vdd_on, vdd_off, vbat_on, vbat_off;
    
    SPI_ctrl OLED_SC(
    .clk(clk),
    .rst_n(rst_n),
    .data_in(spi_data),
    .data_rdy(spi_data_rdy),
    .SCLK(oled_SCLK),
    .MOSI(oled_SDIN),
    .done(spi_done),
    .busy(spi_busy)
    );
    
    delay100ms DELAY(
    .clk(clk), // 100MHz clk
    .delay_en(delay_en),
    .done(delay_done),
    .rst_n(rst_n)
    );
    
    
    // Switch VDD and VBAT
    always_ff @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            oled_vdd <= 1'b0;
            oled_vbat <= 1'b0;
        end else begin
            if(vdd_on) oled_vdd <= 1'b1;
            if(vbat_on) oled_vbat <= 1'b1;
            if(vdd_off) oled_vdd <= 1'b0;
            if(vbat_off) oled_vbat <= 1'b0;
        end
    end
    
    // State machine
    typedef enum logic[3:0] {IDLE,
                             PWRON2,
                             CLEAR,
                             FALL,
                             VBATON,
                             PWRONDELAY,
                             DISPLAYON,
                             SETFULL,
                             RUNNING,
                             DISPLAYOFF,
                             PWROFFDELAY
                             } state_t;
    state_t state, nxt_state;
    always_ff @(posedge clk, negedge rst_n) begin
        if(!rst_n) state <= IDLE;
        else state <= nxt_state;
    end
    
    always_comb begin
        // IDLE output
        vdd_on = 0;
        vdd_off = 0;
        vbat_on = 0;
        vbat_off = 0;
        oled_rst_n = 1;
        spi_data = 8'b0;
        spi_data_rdy = 0;
        nxt_state = state;
        delay_en = 0;
        oled_dc_n = 0;
        case(state)
            IDLE: begin
                if(switch) begin
                    vdd_on = 1;
                    nxt_state = PWRON2;
                end
            end
            // Send Display off command
            PWRON2: begin
                spi_data = 8'hAE;
                spi_data_rdy = 1;
                if(spi_done) begin
                    oled_rst_n = 0;
                    nxt_state = VBATON;
                end
            end
            VBATON: begin
                vbat_on = 1;
                nxt_state = PWRONDELAY;
            end
            PWRONDELAY: begin
                delay_en = 1;
                if(delay_done) nxt_state = DISPLAYON;
            end 
            DISPLAYON: begin
                spi_data = 8'hAF;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = SETFULL;
                end
            end
            SETFULL: begin
                spi_data = 8'hA5;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = RUNNING;
                end
            end
            RUNNING: begin
                if(switch) begin
                    nxt_state = DISPLAYOFF;
                end
            end
            DISPLAYOFF: begin
                spi_data = 8'hAE;
                if(spi_done) begin
                    vbat_off = 1;
                    nxt_state = PWROFFDELAY;
                end
            end
            PWROFFDELAY: begin
                delay_en = 1;
                if(delay_done) begin
                    nxt_state = IDLE;
                    vdd_off = 1;
                end
            end
        endcase
    end
endmodule
