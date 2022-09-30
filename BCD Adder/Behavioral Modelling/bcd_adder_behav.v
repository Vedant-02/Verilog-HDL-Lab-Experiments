`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 19:32:11
// Design Name: 
// Module Name: bcd_adder_behav
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
//Lab-5:Work 4. Write a behavioural code for implementing
//a. a BCD Adder/Subtractor Unit.

module bcd_adder_behav(a,b,c0,s,cout);
input [3:0]a,b;
input c0;
output reg [3:0]s;
output reg cout;
reg [4:0]temp_s;
always@(a,b,c0)
 begin
    temp_s=a+b+c0;
    if(temp_s>9)
     begin
        cout=1;
        temp_s=temp_s+6;
        s=temp_s[3:0];
     end
    else
     begin
        cout=0;
        s=temp_s[3:0];
     end
 end 
endmodule
