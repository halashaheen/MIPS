`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:32 10/21/2019 
// Design Name: 
// Module Name:    Program_counter 
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
module pc(write ,read , clk , reset );
input clk , reset ;
input [31:0] write ;
output [31:0] read ;

always@(posedge clk)


begin 

if(reset)
begin 
read <= 32'b0 ;

end
else 
read <= write ;
end
endmodule 






