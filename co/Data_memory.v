`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:29 10/21/2019 
// Design Name: 
// Module Name:    Data_memory 
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
module Datamemory (readdata,address_data,writedata,memread,memwrite,clock,lscontrol,sign_extend,tb_address,tb_data);
output reg [31:0] readdata;
wire [31:0] address;
input memread ;
input memwrite ;
///////tb
input [12:0]tb_address;
output reg [31:0]tb_data;
input [1:0]lscontrol;//control to different byte,half word,word
input [31:0] writedata ;
input [31:0] address_data ;
input clock,sign_extend;
 reg [31:0]DM[0:8191];
assign  address=address_data;
always @ *
begin
tb_data=DM[tb_address];
end
always @(memread or address or sign_extend or lscontrol or DM[address])
begin
if(memread)
begin
case(lscontrol)
	0:
	begin//byte
		case(address[1:0])// 31:24,23:16,15:8,7:0
			0:begin //31:24
                            if(sign_extend && DM[address>>2][31])
				begin
                                     readdata<={24'hffffff,DM[address>>2][31:24]}; 
				end
			    else
				begin
                                     readdata<={24'b0,DM[address>>2][31:24]};
				end
                             
                        end 
			1:begin //23:16
                            if(sign_extend && DM[address>>2][23])
				begin
                                     readdata<={24'hffffff,DM[address>>2][23:16]}; 
				end
			    else
				begin
                                     readdata<={24'b0,DM[address>>2][23:16]};
				end
				  
			end 
			2:begin //15:8
 			     if(sign_extend && DM[address>>2][15])
				begin
                                     readdata<={24'hffffff,DM[address>>2][15:8]}; 
				end
			    else
				begin
                                     readdata<={24'b0,DM[address>>2][15:8]};
				end
			end 
			default:begin //7:0
  			     if(sign_extend && DM[address>>2][7])
				begin
                                     readdata<={24'hffffff,DM[address>>2][7:0]}; 
				end
			    else
				begin
                                     readdata<={24'b0,DM[address>>2][7:0]};
				end                               
                         end 
		endcase
	end

	1:
	begin//halfword
		case(address[1])
			0:begin //31:16
                           	if(sign_extend && DM[address>>2][31])
                            		begin
                                  		readdata<={16'hffff,DM[address>>2][31:16]}; 
                            		end 
				else
					begin
						readdata<={16'b0,DM[address>>2][31:16]}; 
					end
                        end 
			default:begin //15:0
                        	if(sign_extend && DM[address>>2][15])
                           		begin
                                  		readdata<={16'hffff,DM[address>>2][15:0]}; 
                            		end 
                           	else
                                  	begin
 				  		readdata<={16'b0,DM[address>>2][15:0]}; 
                                   	end 
			end 
		endcase
		end
	default:
	begin//word
		 readdata<=DM[address>>2];
		end
	endcase
end
else readdata<=32'b0;
end
always @(posedge clock)
begin
if(memwrite)
begin
	case(lscontrol)// 31:24,23:16,15:8,7:0
	0:begin//byte
		case(address[1:0])
			0:begin DM[address>>2]<={writedata[7:0],DM[address>>2][23:0]};end
			1:begin DM[address>>2]<={DM[address>>2][31:24],writedata[7:0],DM[address>>2][15:0]};end
			2:begin DM[address>>2]<={DM[address>>2][31:16],writedata[7:0],DM[address>>2][7:0]};end
			3:begin DM[address>>2]<={DM[address>>2][31:8],writedata[7:0]};end
		endcase
	end
	1:begin//halfword
		case(address[1])
		0:begin DM[address>>2]<={writedata[15:0],DM[address>>2][15:0]};end
		1:begin DM[address>>2]<={DM[address>>2][31:16],writedata[15:0]};end

		endcase
	end
	2:begin//word
	DM[address>>2]<=writedata;
	end
	endcase
end
end
endmodule


