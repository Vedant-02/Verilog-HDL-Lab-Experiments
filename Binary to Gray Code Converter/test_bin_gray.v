`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 00:44:55
// Design Name: 
// Module Name: test_bin_gray
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
//lab-2 Work:1a-Write a program to implement binary gray converter

module test_bin_gray;
reg [3:0]bn;
wire [3:0]gry;

bin_gray_bin B1(bn,gry);

initial
 begin
    bn=4'b0000;
    #10 bn=4'b0001;
    #10 bn=4'b0010;
    #10 bn=4'b0011;
    #10 bn=4'b0100;
    #10 bn=4'b0101;
    #10 bn=4'b0110;
    #10 bn=4'b0111;
    #10 bn=4'b1000;
    #10 bn=4'b1001;
    #10 bn=4'b1010;
    #10 bn=4'b1011;
    #10 bn=4'b1100;
    #10 bn=4'b1101;
    #10 bn=4'b1110;
    #10 bn=4'b1111;
   end    
 initial #160 $finish; 
endmodule
