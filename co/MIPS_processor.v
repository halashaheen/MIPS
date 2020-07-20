`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:58 10/26/2019 
// Design Name: 
// Module Name:    MIPS_processor 
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
module MIPS_processor (clk,reset,instruc_data,write_address,inst,wr,tb_da,tb_add,tb_data,tb_address,pc);//
output [31:0]pc;
//output [31:0]reg_data;
input wr;
////testbench
output [31:0]tb_data;
input [12:0]tb_address;
output [31:0]tb_da;
input [4:0]tb_add;
output [31:0]inst;
//output [31:0]rs_data;

input [31:0] write_address;
input [31:0] instruc_data;
wire [31:0]JmOp;
wire [31:0] BmOP;
input clk;
input reset;
wire [31:0]pc_next;
wire [31:0]pc_res;
wire [31:0]instruction;
wire [31:0]pc_adder_out;
wire RegDst;
wire ALUsrc;
wire MemtoReg;
wire RegWrite;
wire MemRead;
wire MemWrite;
wire Branch;
wire [1:0]AlUop;
wire Jump;
wire JALRegDst;
wire JALWritetoReg;
wire [1:0] LScontrol;
wire SignExtend,zero,JR;
wire [4:0]x;
wire [31:0] readData1,readData2,writeData,Inst_signExtend,mux_src_op,Aluresult,ReadData,y,jump_address,new_offset,branch_adder_out;
wire [4:0] writeRegister;
wire[3:0] AluOut;
wire [27:0]SL_op;
//new
//assign rs_data=readData1;
//assign reg_data=writeData;
assign inst=instruction;
assign pc=pc_res;
pc PC (pc_next, pc_res,clk,reset);
INST_mem IM(instruction,pc_res,instruc_data,write_address,clk,wr); //INST_mem(instruction,read_address,instruc_data,write_address,tempclock );
adder_32_simple Adder_pc(pc_res,4,pc_adder_out);
control_unit controlUnit(instruction[31:26],RegDst,ALUsrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AlUop,Jump, JALRegDst, JALWritetoReg, LScontrol,SignExtend);
mux5 REG_DEST(x,instruction[20:16],instruction[15:11],RegDst);
mux5 JAL_MUX(writeRegister,x,5'd31,JALRegDst);
RegisterFile RF (readData1,readData2,instruction[25:21],instruction[20:16],writeRegister,writeData,RegWrite,clk,tb_add,tb_da);
sign_extend SE(Inst_signExtend,instruction[15:0]);
mux ALU_source_mux(mux_src_op,readData2,Inst_signExtend,ALUsrc);
Alu32bit ALU (AluOut, readData1,mux_src_op,Aluresult,instruction[10:6]/*shift amount*/,zero);
Alu_ctrl ALU_control(AluOut,AlUop,instruction[5:0],JR);
Datamemory DM (ReadData,Aluresult,readData2,MemRead,MemWrite,clk,LScontrol,SignExtend,tb_address,tb_data);
mux mem_to_reg_mux(y,Aluresult,ReadData,MemtoReg);
mux JAL_mux(writeData,y,pc_adder_out,JALWritetoReg);
shift_left28 SL2_address(SL_op,instruction[25:0]);
assign jump_address = {pc_adder_out[31:28],SL_op};
shift_left2 SL2_branch(new_offset,Inst_signExtend);
adder_32_simple branch_adder(pc_adder_out,new_offset,branch_adder_out);
and select(PcSrc,zero,Branch);
mux branch_mux (BmOP,pc_adder_out,branch_adder_out,PcSrc);
mux jump_mux (JmOp,BmOP,jump_address,Jump);
mux jump_reg_mux(pc_next,JmOp,readData1,JR);

endmodule
