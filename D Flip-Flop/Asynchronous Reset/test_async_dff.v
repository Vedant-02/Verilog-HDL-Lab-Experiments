`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2022 19:50:46
// Design Name: 
// Module Name: test_async_dff
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
//Work:1 Asynchronous reset

module test_async_dff;
reg clk,D,reset;
wire Q;
async_d_ff AD1(clk,D,reset,Q);

initial
 begin
    clk=0;
    D=0; reset=0;
    #10 D=1; reset=1;
    #10 D=1; reset=0;
    #10 D=1; reset=1;
 end

initial #40 $finish;
always #5 clk=~clk;
endmodule
