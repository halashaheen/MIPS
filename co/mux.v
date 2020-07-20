`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:44 10/21/2019 
// Design Name: 
// Module Name:    mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments:  

//
//////////////////////////////////////////////////////////////////////////////////
module mux(OUT,A,B,sel);
input [31:0]A;
input [31:0]B;
input sel;
output reg [31:0]OUT;
always@(A,B,sel)
begin
case(sel)
0:OUT<=A;
default:OUT<=B;
endcase
end
endmodule 