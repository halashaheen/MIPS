
module MIPS_processor (clk,reset);
input clk;
input reset;
wire [31:0]pc_next ;
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
programcounter PC (pc_next, pc_res,clk,reset);
INST_mem IM(instruction,pc_res);
adder_32_simple Adder_pc(pc_res,4,pc_adder_out);
control_unit controlUnit(instruction[31:26],RegDst,ALUsrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AlUop,Jump, JALRegDst, JALWritetoReg, LScontrol,SignExtend);
mux REG_DEST(x,instruction[20:16],instruction[15:11],RegDst);
mux JAL_MUX(writeRegister,x,31,JALRegDst);
RegisterFile RF (readData1,readData2,instruction[25:21],instruction[20:16],writeRegister,writeData,RegWrite,clk);
sign_extend SE(Inst_signExtend,instruction[15:0]);
mux ALU_source_mux(mux_src_op,readData2,Inst_signExtend,ALUsrc);
Alu32bit ALU (AluOut, readData1,mux_src_op,Aluresult,instruction[10:6]/*shift amount*/,zero);
Alu_ctrl ALU_control(AluOut,AlUop,instruction[5:0],JR);
Datamemory DM (ReadData,Aluresult,readData2,MemRead,MemWrite,clk,LScontrol,SignExtend);
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