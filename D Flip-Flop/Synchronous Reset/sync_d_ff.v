`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2022 19:24:25
// Design Name: 
// Module Name: sync_d_ff
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

//Lab-6:By Vedant A Sontake(B20EE095)
//Work:1 Synchronous reset

module sync_d_ff(clk,D,reset,Q);
input D,clk,reset;
output reg Q;
always@(posedge clk)
    if(!reset)
        Q=0;
    else
        Q=D;
endmodule
