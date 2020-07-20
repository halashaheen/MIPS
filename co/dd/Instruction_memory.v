`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:17 10/21/2019 
// Design Name: 
// Module Name:    Instruction_memory 
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
module INST_mem(instruction,read_address);
output [31:0] instruction;
input [31:0] read_address;
reg [31:0] IM [0:8191];
initial
begin
$readmemh("IM_init",IM);
end
assign instruction = IM[read_address>>2];	
endmodule 