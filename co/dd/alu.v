`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:51 10/21/2019 
// Design Name: 
// Module Name:    alu 
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
module Alu32bit (Aluctl, A, B, Aluout,shift_amount, zero);
input[3:0] Aluctl;
input[31:0] A ,B ;
input [4:0] shift_amount;
output reg[31:0] Aluout;
output  zero;
assign zero=(Aluout==0);
always@(Aluctl, A, B,shift_amount)

begin

case(Aluctl)

0: Aluout <= A & B; //And

1: Aluout <= A | B; //OR

2: Aluout <= A + B; //Add //sw //lw

6: Aluout <= A +(~B +1); //Sub //beq

7: Aluout <= A < B? 1:0; //slt

10:Aluout <= A << (shift_amount);      //sll  // we shift with value shift_amount not B //10:Aluout <= A << (shift_amount); 

12: Aluout <= ~ (A|B); //Nor

default Aluout <= 0; //<==== this case zero flag will be enabled //won't do thing but have to take care 

endcase 
end

endmodule


