`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 17:24:42
// Design Name: 
// Module Name: bcd_to_seven
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
//lab-2 Work:2-Write a program to implement a BCD to 7-segment display decoder

module bcd_to_seven(hex,led);
input  [3:0]hex;
output reg [1:7]led;

always @(hex)                           //a four bit input is given and a 7 line output 
    case(hex)                           //is obtained for 7 segment display
        4'b0000 : led=7'b1111110;       //input=0
        4'b0001 : led=7'b0110000;       //input=1
        4'b0010 : led=7'b1101101;       //input=2
        4'b0011 : led=7'b1111001;       //input=3
        4'b0100 : led=7'b0110011;       //input=4
        4'b0101 : led=7'b1011011;       //input=5
        4'b0110 : led=7'b1011111;       //input=6
        4'b0111 : led=7'b1110000;       //input=7
        4'b1000 : led=7'b1111111;       //input=8
        4'b1001 : led=7'b1111011;       //input=9
        4'b1010 : led=7'b1110111;       //input=10,output=A
        4'b1011 : led=7'b0011111;       //input=11,output=b
        4'b1100 : led=7'b1001110;       //input=12,output=C
        4'b1101 : led=7'b0111101;       //input=13,output=d
        4'b1110 : led=7'b1001111;       //input=14,output=E
        4'b1111 : led=7'b1000111;       //input=15,output=F
        default : led=7'b0000000;
    endcase
endmodule
