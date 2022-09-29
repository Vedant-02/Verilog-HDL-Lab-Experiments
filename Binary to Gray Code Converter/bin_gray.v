`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 00:33:12
// Design Name: 
// Module Name: bin_gray_bin
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

module bin_gray_bin(bn,gry);
input [3:0]bn;
output [3:0]gry;

assign gry[3]=bn[3];
assign gry[2]=bn[3]^bn[2];
assign gry[1]=bn[2]^bn[1];
assign gry[0]=bn[1]^bn[0];
endmodule
