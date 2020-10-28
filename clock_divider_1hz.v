`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 19:58:44
// Design Name: 
// Module Name: clock_divider_1hz
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


module clock_divider_1hz(
    output clk_out,
    input clk_in,
    input reset
    );//convert 500Hz to 1 Hz clock signal
    reg [8:0]Q;
    reg clk_out;
    always @(posedge clk_in or posedge reset)
    begin
         if (reset==1'b1)
            begin
                Q<=9'b0;
                clk_out<=1'b0;
            end
        else if (Q==9'b111110011)//count up to 499 (from 0)
            begin
                clk_out<=1'b1;
                Q<=9'b0;
            end
        else if (Q<9'b111110011)
            begin
                Q<=Q+1;
                clk_out<=1'b0;
            end
        else //default
            begin
                Q<=9'b0;
                clk_out<=1'b0;
            end
    end
endmodule
