`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:32 10/21/2019 
// Design Name: 
// Module Name:    shiftLeft 
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
module shift_left28(out,inn);
output reg [27:0] out;
input  [25:0] inn;
always @(inn)
begin
out<=(inn<<2);
end
endmodule 