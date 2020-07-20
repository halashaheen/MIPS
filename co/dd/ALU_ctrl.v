`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:15 10/21/2019 
// Design Name: 
// Module Name:    ALU_ctrl 
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
module Alu_ctrl(AluOut,AluOp,Func,JR);
output reg[3:0] AluOut;
output reg JR;
input [1:0]AluOp;
input [5:0] Func;

always@(AluOp , Func )

if (AluOp==2'b10)//Rtype

begin
case(Func)
0: begin
AluOut<=4'b1010; //sll *assumed*
JR<=0;
end

8: begin 
AluOut<=4'bzzzz; //modify x-->z bec x:don't know while z:don't care
JR<=1;
end 

32: begin
 AluOut <=4'b0010; //add
 JR<=0;
end

34: begin
 AluOut <= 4'b0110; //sub
 JR<=0;
end

36: begin
 AluOut <= 4'b0000; //and
JR<=0;
end

37: begin
 AluOut <= 4'b0001; //or
 JR<=0;
end

42: begin 
AluOut <= 4'b0111; //slt
JR<=0;
end

default: begin
AluOut <= 4'bzzzz; //modify x-->z bec x:don't know while z:don't care
JR<=0; //if choose don't care option it migth be equal 1 and cause jr operation but here we want to make no operation
end

endcase 
end

else if (AluOp==2'b00)//add for loads and stores
begin
JR<=0;
AluOut <= 4'b0010; //add
end

else if (AluOp==2'b01)//subtract for beq
begin
JR<=0;
AluOut <= 4'b0110; //sub
end 

else if (AluOp==2'b11) //don't understand this one {why ori  to be implemented aslun }
begin
JR<=0;
AluOut <=4'b0011; //ori * assumed *
end


else 
begin
AluOut <= 4'bzzzz ; //replace x with z //i prefer to choose aluout which has no meaning like 0100
JR<=1'b0;  //replace x with 0 to avoid jr operation 
end

endmodule 

