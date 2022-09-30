`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 19:51:46
// Design Name: 
// Module Name: test_bcd_adder_behav
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

module test_bcd_adder_behav;
reg [3:0]a,b;
reg c0;
wire [3:0]s;
wire cout;
bcd_adder_behav BB1(a,b,c0,s,cout);
initial
 begin
    a=4'b0000; b=4'b0000; c0=1'b0;          //0+0+0
    #10 a=4'b0010; b=4'b0011;               //2+3+0
    #10 a=4'b0100; b=4'b0111;               //4+7+0
    #10 a=4'b1000; b=4'b1001;c0=1'b1;       //8+9+1
    #10 a=4'b1000; b=4'b1010;               //8+10+1
    #10 a=4'b0100; b=4'b0101;               //4+5+1
 end
 initial #70 $finish;
endmodule
