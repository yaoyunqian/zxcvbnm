`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/26 21:50:38
// Design Name: 
// Module Name: tri_buffer
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


module tri_buffer(
    output [6:0]data_out,
    input [6:0]data_in,
    input control
    );
    reg [6:0]data_out;
    always 
    begin
        if (control==0)data_out=data_in;
        else data_out=7'bz;
    end
endmodule
