`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:36 10/21/2019 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(OP,RegDst,ALUsrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AlUop,Jump, 

                    JALRegDst, JALWritetoReg, LScontrol,SignExtend); 

input [5:0]OP; 

output reg RegDst,ALUsrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,JALRegDst,JALWritetoReg,SignExtend; 

output reg[1:0]AlUop; 

output reg[1:0]LScontrol; 

 

always @(OP) 

begin 

case (OP) 

//start--------hala&yasmeen-------- 

6'b000000:   //R-Type  

begin 

RegDst <=1'b1 ; 

ALUsrc <=1'b0  ; 

MemtoReg <=1'b0 ; 

RegWrite <=1'b1 ; 

MemRead <=1'b0 ; 

MemWrite <=1'b0 ; 

Branch <=1'b0 ; 

AlUop <=2'b10 ; 

Jump <=1'b0 ; 

JALRegDst <=1'b0 ; 

JALWritetoReg <=1'b0 ; 

LScontrol <=2'b00 ; 

SignExtend <=1'b0 ; 

end 

6'b000010:   //Jump  

begin 

RegDst <=1'b0 ; 

ALUsrc <=1'b0  ; 

MemtoReg <=1'b0 ; 

RegWrite <=1'b0 ; 

MemRead <=1'b0 ; 

MemWrite <=1'b0 ; 

Branch <=1'b0 ; 

AlUop <=2'b00 ; 

Jump <=1'b1 ; 

JALRegDst <=1'b0 ; 

JALWritetoReg <=1'b0 ; 

LScontrol <=2'b00 ; 

SignExtend <=1'b0 ; 

end 

6'b000011:   //JAL 

begin 

RegDst <=1'b0 ; 

ALUsrc <=1'b0  ; 

MemtoReg <=1'b0 ; 

RegWrite <=1'b1 ; 

MemRead <=1'b0 ; 

MemWrite <=1'b0 ; 

Branch <=1'b0 ; 

AlUop <=2'b00 ; 

Jump <=1'b1 ; 

JALRegDst <=1'b1 ; 

JALWritetoReg <=1'b1 ; 

LScontrol <=2'b00 ; 

SignExtend <=1'b0 ; 

end 

//end--------hala&yasmeen-------- 

  

  

//start ---------nada&nareman--------------- 

4: //beq 

begin 

RegDst <=1'b0 ;  

  

ALUsrc <=1'b0  ;  

  

MemtoReg <=1'b0 ;  

  

RegWrite <=1'b0 ;  

  

MemRead <=1'b0 ;  

  

MemWrite <=1'b0 ;  

  

Branch <=1'b1 ;  

  

AlUop <=2'b01 ;  

  

Jump <=1'b0 ;  

  

JALRegDst <=1'b0 ;  

  

JALWritetoReg <=1'b0 ;  

  

LScontrol <=2'b00 ;  

  

SignExtend <=1'b0 ;  

  

end  

13://ori 

begin 

RegDst <=1'b0 ;  

  

ALUsrc <=1'b1  ;  

  

MemtoReg <=1'b0 ;  

  

RegWrite <=1'b1 ;  

  

MemRead <=1'b0 ;  

  

MemWrite <=1'b0 ;  

  

Branch <=1'b0 ;  

  

AlUop <=2'b11 ;  

  

Jump <=1'b0 ;  

  

JALRegDst <=1'b0 ;  

  

JALWritetoReg <=1'b0 ;  

  

LScontrol <=2'b00 ;  

  

SignExtend <=1'b0 ;  

  

end 

32: //lb 

begin 

RegDst <=1'b0 ;  

  

ALUsrc <=1'b1  ;  

  

MemtoReg <=1'b1;  

  

RegWrite <=1'b1 ;  

  

MemRead <=1'b1 ;  

  

MemWrite <=1'b0 ;  

  

Branch <=1'b0 ;  

  

AlUop <=2'b00 ;  

  

Jump <=1'b0 ;  

  

JALRegDst <=1'b0 ;  

  

JALWritetoReg <=1'b0 ;  

  

LScontrol <=2'b00 ;  

  

SignExtend <=1'b1 ;  

  

end 

//end -----------nada&nareman--------------- 

//start ---------manal&nesma--------------- 

 6'b100001:   //lh 

begin 

RegDst <=1'b0 ; 

ALUsrc <=1'b1  ; 

MemtoReg <=1'b1 ; 

RegWrite <=1'b1 ; 

MemRead <=1'b1 ; 

MemWrite <=1'b0 ; 

Branch <=1'b0; 

AlUop <=2'b00 ; 

Jump <=1'b0 ; 

JALRegDst <=1'b0 ; 

JALWritetoReg <=1'b0 ; 

LScontrol <=2'b01 ; 

SignExtend <=1'b1 ; 

end 

6'b100011:   //lw 

begin 

RegDst <=1'b0 ; 

ALUsrc <=1'b1  ; 

MemtoReg <=1'b1 ; 

RegWrite <=1'b1 ; 

MemRead <=1'b1 ; 

MemWrite <=1'b0 ; 

Branch <=1'b0 ; 

AlUop <=2'b00 ; 

Jump <=1'b0 ; 

JALRegDst <=1'b0 ; 

JALWritetoReg <=1'b0 ; 

LScontrol <=2'b10 ; 

SignExtend <=1'b0 ; 

end 

6'b100100:   //lbu  

begin 

RegDst <=1'b0 ; 

ALUsrc <=1'b1  ; 

MemtoReg <=1'b1 ; 

RegWrite <=1'b1 ; 

MemRead <=1'b1 ; 

MemWrite <=1'b0 ; 

Branch <=1'b0 ; 

AlUop <=2'b00 ; 

Jump <=1'b0 ; 

JALRegDst <=1'b0 ; 

JALWritetoReg <=1'b0 ; 

LScontrol <=2'b00 ; 

SignExtend <=1'b0 ; 

end 

 

 

//end -----------manal&nesma--------------- 

  

  

//start ---------hend&nermeen--------------- 

41://sh 

    begin 

    RegDst <= 1'b0;  

    ALUsrc <= 1;  

    MemtoReg <= 1'b0;  

    RegWrite <= 0;  

    MemRead <= 0;  

    MemWrite <= 1;  

    Branch <= 0;  

    AlUop <= 2'b00;  

    Jump <= 0; 

        JALRegDst <= 1'b0;  

    JALWritetoReg <= 1'b0;   

    LScontrol <= 1; 

    SignExtend <= 1'b0; 

    end 

43://sw 

    begin 

    RegDst <= 1'b0;  

    ALUsrc <= 1;  

    MemtoReg <= 1'b0;  

    RegWrite <= 0;  

    MemRead <= 0;  

    MemWrite <= 1;  

    Branch <= 0;  

    AlUop <= 2'b00;  

    Jump <= 0; 

    JALRegDst <= 1'b0;  

    JALWritetoReg <= 1'b0;   

    LScontrol <= 2; 

    SignExtend <= 1'b0; 

    end  

40://sb 

begin 

RegDst      <=1'b0; 

ALUsrc      <=1'b1; 

MemtoReg      <=1'b0 ; 

RegWrite      <=1'b0; 

MemRead      <=1'b0; 

MemWrite      <=1'b1; 

Branch      <=1'b0; 

AlUop         <=2'b00; 

Jump      <=1'b0; 

JALRegDst     <=1'b0; 

JALWritetoReg <=1'b0; 

LScontrol     <=1'b0; 

SignExtend    <=1'b0; 

end 

37://lhu 

begin 

RegDst      <=1'b0; 

ALUsrc      <=1'b1; 

MemtoReg      <=1'b1 ; 

RegWrite      <=1'b1; 

MemRead      <=1'b1; 

MemWrite      <=1'b0; 

Branch      <=1'b0; 

AlUop         <=2'b00; 

Jump      <=1'b0; 

JALRegDst     <=1'b0; 

JALWritetoReg <=1'b0; 

LScontrol     <=1'b1; 

SignExtend    <=1'b0; 

end 
6'b001000://addi
begin
RegDst <=1'b0 ;  

  

ALUsrc <=1'b1  ;  

  

MemtoReg <=1'b0 ;  

  

RegWrite <=1'b1 ;  

  

MemRead <=1'b0 ;  

  

MemWrite <=1'b0 ;  

  

Branch <=1'b0 ;  

  

AlUop <=2'b00 ;  

  

Jump <=1'b0 ;  

  

JALRegDst <=1'b0 ;  

  

JALWritetoReg <=1'b0 ;  

  

LScontrol <=2'b00 ;  

  

SignExtend <=1'b0 ;  
end	
default: 
begin
RegDst      <=1'b0; 

ALUsrc      <=1'b0; 

MemtoReg      <=1'b0 ; 

RegWrite      <=1'b0; 

MemRead      <=1'b0; 

MemWrite      <=1'b0; 

Branch      <=1'b0; 

AlUop         <=2'b00; 

Jump      <=1'b0; 

JALRegDst     <=1'b0; 

JALWritetoReg <=1'b0; 

LScontrol     <=1'b0; 

SignExtend    <=1'b0; 

 end
//end -----------hend&nermeen--------------- 

endcase  

end  

endmodule 