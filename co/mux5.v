`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:10 10/26/2019 
// Design Name: 
// Module Name:    mux5 
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
module mux5(OUT,A,B,sel);
input [4:0]A;
input [4:0]B;
input sel;
output reg [4:0]OUT;
always@(A,B,sel)
begin
case(sel)
0:OUT<=A;
default:OUT<=B;
endcase
end
endmodule 

