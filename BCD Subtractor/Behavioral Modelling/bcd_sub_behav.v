`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 20:01:50
// Design Name: 
// Module Name: bcd_sub_behav
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

module bcd_sub_behav(a,b,s,cout);
input [3:0]a,b;
output reg [3:0]s;
output reg cout;
reg [3:0]new_b;
reg [4:0]temp_s;
always@(a,b)
 begin
    new_b=10-b;         //taking 10s complement of 1 input
    temp_s=a+new_b;
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
        s=10-s;
     end
 end
endmodule
