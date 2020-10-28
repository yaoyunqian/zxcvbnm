`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 19:58:44
// Design Name: 
// Module Name: ring_counter_4_bit
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


module ring_counter_4_bit(
    output [3:0] A,
    input clk_500hz,
    input reset
    );
    reg [3:0]A;
    always @(posedge clk_500hz or posedge reset)
    begin
        if (reset==1'b1)A<=4'b0111;
        else if (A==4'b0111)A<=4'b1011;
        else if (A==4'b1011)A<=4'b1101;
        else if (A==4'b1101)A<=4'b1110;
        else if (A==4'b1110)A<=4'b0111;
        else A<=4'b0111;
    end
endmodule
