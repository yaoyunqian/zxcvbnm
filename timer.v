`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 19:58:44
// Design Name: 
// Module Name: timer
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


module timer(
    output [2:0] Q_L,
    output [3:0] Q_R,
    input clk,
    input reset
    );
    reg [2:0]Q_L;
    reg [3:0]Q_R;
    always @(posedge clk or posedge reset)
    begin
        if (reset==1'b1|(Q_L==3'b101 & Q_R==4'b1001))//count up to 59, start all over again
            begin
                Q_L=3'b0;
                Q_R=4'b0;
            end
        else if (Q_R==4'b1001)//carry=1
            begin
                Q_L<=Q_L+1;
                Q_R<=4'b0;
            end
        else if (Q_R<4'b1001)
            Q_R<=Q_R+1;
        else //default
            Q_L<=3'b0;
            Q_R<=4'b0;
    end
endmodule
