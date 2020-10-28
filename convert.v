`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 22:15:10
// Design Name: 
// Module Name: convert
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


module convert(
    output [6:0] C,
    input [3:0] w3,
    input [3:0] w2,
    input [3:0] w1,
    input [3:0] w0
    );
    reg [6:0]C;
    always @(w0 or w1 or w2 or w3)
    begin
        if (w0!=7'bz)C=w0;
        else if (w1!=7'bz)C=w1;
        else if (w2!=7'bz)C=w2;
        else C=w3;
    end
endmodule
