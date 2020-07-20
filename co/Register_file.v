`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:03 10/21/2019 
// Design Name: 
// Module Name:    Register_file 
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
module RegisterFile(readData1,readData2,readRegister1,readRegister2,writeRegister,writeData,regWrite,clk,tb_add,tb_da);
output reg [31:0]tb_da;
input [4:0]tb_add;
output  [31:0]readData1,readData2;
input [4:0] readRegister1,readRegister2,writeRegister;
input  [31:0]writeData;
input regWrite;
input clk;
reg [31:0]RF[0:31];

assign readData1=RF[readRegister1];
assign readData2=RF[readRegister2];
always @ *
begin
tb_da=RF[tb_add];
end
always@(posedge clk)
begin
if(regWrite)
RF[writeRegister] <= writeData;

end
initial 
begin
RF[0]<=32'b0;
end
endmodule
