`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jianping Shen
// 
// Create Date: 05/09/2021 05:44:07 PM
// Design Name: 
// Module Name: delay1ms
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// When delay_en is asserted, done will be asserted after 1ms.
// delay_en must be holden during counting
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module delay1ms(
    input clk, // 100MHz clk
    input delay_en,
    output done,
    input rst_n
    );
    localparam DELAY_CNT = 100000;
    logic [23:0] count;
    
    always_ff@(posedge clk, negedge rst_n)begin
        if(!rst_n) count <= 0;
        else if(delay_en & (count != DELAY_CNT)) count <= count + 1;
        else count <= 0;
    end
    assign done = (count == DELAY_CNT) & delay_en;
endmodule
