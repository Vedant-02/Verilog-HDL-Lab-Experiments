`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 13:26:25
// Design Name: 
// Module Name: priority_enc_for_loop
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

module priority_enc_for_loop(d,out,v);
input [3:0]d;
output reg v;
output reg [1:0]out;
integer k;
always@(d)
    begin
        v=0;
        out=2'bXX;
        for(k=0;k<4;k=k+1)
            if(d[k])
             begin
                v=1;
                out=k;
             end
    end        
endmodule
