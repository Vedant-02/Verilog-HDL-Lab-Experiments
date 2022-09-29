`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 23:22:19
// Design Name: 
// Module Name: multiplier
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

module multiplier(a0,a1,a2,b0,b1,b2,led_o,led_t);
input a0,a1,a2,b0,b1,b2;        //input for (3 bit X 3 bit) multiplication
output [6:0]led_o,led_t;        //2 seven segment outputs
wire [5:0]p;                    //final product stored in this
assign p[0]=a0&b0;
wire x1,x2,x3,x4,x5,x6;
wire o1,o2,o3;
full_adder FA1(a1&b0,a0&b1,0,p[1],x1);
full_adder FA2(a2&b0,a1&b1,x1,o1,x2);
full_adder FA3(a2&b1,0,x2,o2,x3);
full_adder FA4(o1,a0&b2,0,p[2],x4);
full_adder FA5(o2,a1&b2,x4,p[3],x5);
full_adder FA6(x3,a2&b2,x5,p[4],p[5]);
wire [3:0]sev1,sev2;
bin_to_bcd B1(p,sev2,sev1);     //converts binary to bcd
bcd_to_sev BD1(sev1,led_o);     //converts bcd to 7 segment for ones place
bcd_to_sev BD2(sev2,led_t);     //converts bcd to 7 segment for tens place
endmodule
