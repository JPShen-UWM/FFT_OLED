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
    logic delay_en, delay1_en, delay_done, delay1_done;
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
    
    delay100ms DELAY100(
    .clk(clk), // 100MHz clk
    .delay_en(delay_en),
    .done(delay_done),
    .rst_n(rst_n)
    );
    
    delay1ms DELAY1(
    .clk(clk), // 100MHz clk
    .delay_en(delay1_en),
    .done(delay1_done),
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
    typedef enum logic[4:0] {IDLE,
                             IDLEDELAY,
                             PWRONDISOFF,
                             RES,
                             CHGPUMP0,
                             CHGPUMP1,
                             PRECHG0,
                             PRECHG1,
                             VBATON,
                             DISPCON0,
                             DISPCON1,
                             DISPLAYON,
                             SETFULL,
                             RUNNING,
                             DISPLAYOFF,
                             PWROFFDELAY,
                             INVERSE
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
        delay1_en = 0;
        case(state)
            IDLE: begin
                if(switch) begin
                    vdd_on = 1;
                    nxt_state = IDLEDELAY;
                end
            end
            IDLEDELAY: begin
                delay1_en = 1;
                    if(delay1_done) nxt_state = PWRONDISOFF;
            end
            // Send Display off command
            PWRONDISOFF: begin
                spi_data = 8'hAE;
                spi_data_rdy = 1;
                if(spi_done) begin
                    oled_rst_n = 0;
                    nxt_state = RES;
                end
            end
            RES: begin
                oled_rst_n = 0;
                delay1_en = 1;
                if(delay1_done) nxt_state = CHGPUMP0;
            end
            CHGPUMP0: begin
                spi_data = 8'h8D;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = CHGPUMP1;
                end
            end
            CHGPUMP1: begin
                spi_data = 8'h14;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = PRECHG0;
                end
            end
            PRECHG0: begin
                spi_data = 8'hD9;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = PRECHG1;
                end
            end
            PRECHG1: begin
                spi_data = 8'hF1;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = VBATON;
                end
            end
            VBATON: begin
                vbat_on = 1;
                delay_en = 1;
                if(delay_done) nxt_state = DISPCON0;
            end
            DISPCON0: begin
                spi_data = 8'h81;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = DISPCON1;
                end
            end
            DISPCON1: begin
                spi_data = 8'h0F;
                spi_data_rdy = 1;
                if(spi_done) begin
                    nxt_state = DISPLAYON;
                end
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
            INVERSE: begin
                spi_data = 8'hA7;
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
                spi_data_rdy = 1;
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
