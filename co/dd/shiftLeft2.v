`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:36 10/21/2019 
// Design Name: 
// Module Name:    shiftLeft2 
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
module shift_left2(out,in);
output reg [31:0] out;
input  [31:0] in;
always@(in)
begin
out[1:0]<=2'b00;
out[31:2]<=in[29:0];
end
//reg[31:0] temp ;
//always @(in)
//begin
//temp <= in;
//end
//assign out=(temp << 2);
endmodule



