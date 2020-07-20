`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:10 10/21/2019 
// Design Name: 
// Module Name:    Sign_Extend 
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
module sign_extend(InstOut , InstIn);
output reg [31:0] InstOut;
input wire [15:0] InstIn;

always@(InstIn)
if( InstIn[15]==0 )
begin
 InstOut[15:0] <= InstIn[15:0];
 InstOut[31:16] <= 16'b0000_0000_0000_0000;
end
else if (InstIn[15]==1)
begin
InstOut[15:0] <= InstIn[15:0];
 InstOut[31:16] <=16'b1111_1111_1111_1111;
end
else
begin
InstOut[15:0] <= InstIn[15:0];
InstOut[31:16] <= 16'bxxxx_xxxx_xxxx_xxxx;
end

endmodule
