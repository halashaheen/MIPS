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
module INST_mem(instruction,read_address,instruc_data,write_address,clock,wr );
input clock;
input wr;
output reg[31:0] instruction;
input [31:0] instruc_data;
input [31:0] read_address;
input [31:0] write_address;
reg [31:0] IM [0:8191];
wire [31:0]temp;
wire [31:0]writetemp;
assign temp = read_address;
assign writetemp = write_address;
always @ *
begin
instruction <= IM[temp>>2];
end
always @ (posedge clock)
begin
if(wr)
begin
IM[writetemp>>2] <= instruc_data;
end
end
	
endmodule 