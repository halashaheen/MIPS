`timescale 1ns / 1ps
module tb;
	// Inputs
	reg wr;
	reg clk;
	reg reset;
	reg [31:0] instruc_data;
	reg [31:0] write_address;
   reg [31:0] IN [0:8191];
	reg [12:0] tb_address;
	reg [4:0] tb_add;
	//wire [31:0]reg_data;
	// Outputs
	wire [31:0] inst;
	//wire [31:0]rs_data;
	   wire [31:0]tb_data;
	 	wire [31:0] tb_da;
 	   wire [31:0]pc;    
	   
	//reg	[31:0]in_content0;
	// Instantiate the Unit Under Test (UUT)
	//(clk,reset,instruc_data,write_address,pc_content,wr)
	MIPS_processor uut (
		.clk(clk), 
		.reset(reset), 
		.instruc_data(instruc_data), 
		.write_address(write_address),  
		.inst(inst),
		.wr(wr),
		.tb_add(tb_add),

	   .tb_da(tb_da),
		.tb_data(tb_data),
		.tb_address(tb_address),
		.pc(pc)
		//.reg_data(reg_data),
		//.rs_data(rs_data)
	);  
	integer a=0;
		integer b=0;

	 integer i;
	  integer file;
	 //assign in_content0 =IN[0];
	 initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		instruc_data = 0;
		write_address = 0;
      i=0;
		wr=1;
		
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	
$readmemb("IM_init",IN);



for(i=0;i<8192;i=i+1)
begin
@(negedge clk )
begin
write_address=4*i;
instruc_data=IN[i];
end
end
wr=0;
reset=1;
#50
reset=0;

wait(inst===32'bXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX)
begin
//----------------register file content-------------//
file =$fopen("RF","w");
for(b=0;b<32;b=b+1)
begin 
tb_add=b;
#0.01
$fwrite(file,"%h\n",tb_da);
end
$fwrite(file,"%h\n",pc);
for(a=0;a<8192;a=a+1)
begin 
tb_address=a;
#0.01
$fwrite(file,"%h\n",tb_data);
end

$fclose(file);
//----------------datamemory content-------------//
 
	end
	$finish;
	end
always
	begin
		#31.25
 clk=~clk; 
 end
    
endmodule

 