`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 20:59:44
// Design Name: 
// Module Name: digital_clock
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


module digital_clock(
    output [3:0] A,
    output [6:0] C,
    input clock,
    input reset
    );
    wire clk_500,clk_1;
    wire [2:0]QL;
    wire [3:0]QR;
    wire [6:0]C_tens;
    wire [6:0]C_ones;
    reg [6:0]C;
    
    clock_divider_500hz divider1(clk_500,clock,reset);
    clock_divider_1hz divider2(clk_1,clock_500,reset);
    ring_counter_4_bit r(A,clk_500,reset);
    timer t(QL,QR,clk_1,reset);
    SSD_tens driver1(C_tens,QL);
    SSD_ones driver0(C_ones,QR);
    always @(A)
    if (A[0]==0)C<=C_ones;
    else if (A[1]==0)C<=C_tens;
    else
        C<=7'b1111111;
    
endmodule
