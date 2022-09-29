`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 12:52:48
// Design Name: 
// Module Name: priority_encoder_casex
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
//Lab-5:Work 3. Write a program to implement a 4 line to 2 line priority encoder using
//a. Casex statements b. For loop

module priority_encoder_casex(d,out,v);
input [3:0]d;
output reg v;
output reg [1:0]out;
always@(d)
    begin
        v=1;
        casex(d)
            4'b1XXX : out=2'b11;
            4'b01XX : out=2'b10;
            4'b001X : out=2'b01;
            4'b0001 : out=2'b00;
            default : 
             begin 
                v=0;
                out=2'bXX;
             end
        endcase
     end
endmodule
