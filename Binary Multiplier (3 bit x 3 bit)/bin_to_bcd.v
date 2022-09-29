`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 01:05:07
// Design Name: 
// Module Name: bin_to_bcd
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
//By Vedant A Sontake(B20EE095)
//Lab-4-Work 2: Write a Program to implement a a) Binary Multiplier (3 bit X 3 bit)

module bin_to_bcd(bin,bcd_t,bcd_o);
input [5:0]bin;
output [3:0]bcd_t,bcd_o;
reg [7:0]bcd;
reg [3:0]i;
//implements an algorithm for binary to bcd conversion
always @(bin)
begin
    bcd = 0;
    for (i = 0; i < 6; i = i+1)
    begin
        bcd = {bcd[7:0],bin[5-i]};
        if(i < 5 && bcd[3:0] > 4)
        bcd[3:0] = bcd[3:0] + 3;
        if(i < 5 && bcd[7:4] > 4)
        bcd[7:4] = bcd[7:4] + 3;
    end
end
assign bcd_t = bcd[7:4],        //splitting the bcd result into 2 parts
bcd_o = bcd[3:0];               
endmodule
