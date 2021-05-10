`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jianping Shen
// 
// Create Date: 05/07/2021 11:04:59 PM
// Design Name: 
// Module Name: debouncer
// Project Name: FFT_OLED
// Target Devices: Zedboard
// Tool Versions: 
// Description: Debounce button input
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module debouncer(
    input clk,
    input A,
    input rst_n,
    output logic B
    );
    parameter MAX_DELAY = 20;
    logic [5:0] counter;
    logic rst_counter;
    logic on, on_delay;
    typedef enum reg[1:0]{IDLE, RISE, HOLD, FALL} state_t;
    state_t state, nxt_state;
    
    assign B = on & !(on_delay);
    always_ff @(posedge clk) begin
        if(rst_counter) counter <= 0;
        else counter <= counter + 1;
    end
    
    always_ff @(posedge clk, negedge rst_n) begin
        if(!rst_n) state <= IDLE;
        else state <= nxt_state;
    end
    always_ff @(posedge clk) begin
        on_delay <= on;
    end
    always_comb begin
        // default output
        on = 0;
        rst_counter = 0;
        nxt_state = state;
        case(state)
            IDLE: begin
                if(A) begin
                    nxt_state = RISE;
                    rst_counter = 1;
                end
            end
            RISE: begin
                if(!A) nxt_state = IDLE;
                if(counter == MAX_DELAY)
                    nxt_state = HOLD;
            end
            HOLD: begin
                if(!A) begin
                    nxt_state = FALL;
                    rst_counter = 1;
                end
                on = 1;
            end
            FALL: begin
                on = 1;
                if(A) nxt_state = HOLD;
                if(counter == MAX_DELAY)
                    nxt_state = IDLE;
            end
        endcase
    end
endmodule
