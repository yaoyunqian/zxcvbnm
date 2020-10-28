`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 20:46:11
// Design Name: 
// Module Name: SSD_tens
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


module SSD_tens(
    output [6:0] C,//C[6] correspounds to CA, ...C[0]correspounds to CG
    input [2:0] Q
    );
    reg [6:0]C;
    always @(Q)
    begin
        if (Q==3'b0) C=7'b0000001;
        if (Q==3'b001) C=7'b1001111;
        if (Q==3'b010) C=7'b0010010;
        if (Q==3'b011) C=7'b0000110;
        if (Q==3'b100) C=7'b1001100;
        if (Q==3'b101) C=7'b0100100;//display up to 5
    end
endmodule
