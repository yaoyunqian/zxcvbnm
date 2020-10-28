`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 20:46:11
// Design Name: 
// Module Name: SSD_ones
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


module SSD_ones(
    output [6:0] C,//C[6] correspounds to CA, ...C[0]correspounds to CG
    input [3:0] Q
    );
    reg [6:0]C;
    always @(Q)
    begin
        if (Q==4'b0) C=7'b0000001;
        else if (Q==4'b0001) C=7'b1001111;
        else if (Q==4'b0010) C=7'b0010010;
        else if (Q==4'b0011) C=7'b0000110;
        else if (Q==4'b0100) C=7'b1001100;
        else if (Q==4'b0101) C=7'b0100100;
        else if (Q==4'b0110) C=7'b0100000;
        else if (Q==4'b0111) C=7'b0001111;
        else if (Q==4'b1000) C=7'b0000000;
        else if (Q==4'b1001) C=7'b0000100;
        else C=7'b1111111;
    end
endmodule
