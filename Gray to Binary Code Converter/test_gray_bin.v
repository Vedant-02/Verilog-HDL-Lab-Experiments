`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 00:45:29
// Design Name: 
// Module Name: test_gray_bin
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
//lab-2 Work:1b-Write a program to implement gray binary converter

module test_gray_bin;
wire [0:3]bn;
reg [0:3]gry;

gray_bin B2(gry,bn);

initial
 begin
    gry=4'b0000;
    #10 gry=4'b0001;
    #10 gry=4'b0010;
    #10 gry=4'b0011;
    #10 gry=4'b0100;
    #10 gry=4'b0101;
    #10 gry=4'b0110;
    #10 gry=4'b0111;
    #10 gry=4'b1000;
    #10 gry=4'b1001;
    #10 gry=4'b1010;
    #10 gry=4'b1011;
    #10 gry=4'b1100;
    #10 gry=4'b1101;
    #10 gry=4'b1110;
    #10 gry=4'b1111;
   end    
 initial #160 $finish;    
endmodule
