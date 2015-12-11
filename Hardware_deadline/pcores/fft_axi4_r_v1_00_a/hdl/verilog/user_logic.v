
//----------------------------------------------------------------------------
// user_logic.v - module
//----------------------------------------------------------------------------
//
// ***************************************************************************
// ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
// **                                                                       **
// ** Xilinx, Inc.                                                          **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
// ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
// ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
// ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
// ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
// ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
// ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
// ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
// ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
// ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
// ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
// ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
// ** FOR A PARTICULAR PURPOSE.                                             **
// **                                                                       **
// ***************************************************************************
//
//----------------------------------------------------------------------------
// Filename:          user_logic.v
// Version:           1.00.a
// Description:       User logic module.
// Date:              Tue Sep 22 11:58:26 2015 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

module user_logic
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  // --USER ports added here 
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     // Bus to IP clock
  Bus2IP_Resetn,                  // Bus to IP reset
  Bus2IP_Addr,                    // Bus to IP address bus
  Bus2IP_CS,                      // Bus to IP chip select for user logic memory selection
  Bus2IP_RNW,                     // Bus to IP read/not write
  Bus2IP_Data,                    // Bus to IP data bus
  Bus2IP_BE,                      // Bus to IP byte enables
  Bus2IP_RdCE,                    // Bus to IP read chip enable
  Bus2IP_WrCE,                    // Bus to IP write chip enable
  Bus2IP_Burst,                   // Bus to IP burst-mode qualifier
  Bus2IP_BurstLength,             // Bus to IP burst length
  Bus2IP_RdReq,                   // Bus to IP read request
  Bus2IP_WrReq,                   // Bus to IP write request
  IP2Bus_AddrAck,                 // IP to Bus address acknowledgement
  IP2Bus_Data,                    // IP to Bus data bus
  IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
  IP2Bus_Error,                   // IP to Bus error response
  Type_of_xfer                    // Transfer Type
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------
// --USER parameters added here 
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_SLV_AWIDTH                   = 32;
parameter C_SLV_DWIDTH                   = 32;
parameter C_NUM_MEM                      = 1;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
// --USER ports added here 
// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                     Bus2IP_Clk;
input                                     Bus2IP_Resetn;
input      [C_SLV_AWIDTH-1 : 0]           Bus2IP_Addr;
input      [C_NUM_MEM-1 : 0]              Bus2IP_CS;
input                                     Bus2IP_RNW;
input      [C_SLV_DWIDTH-1 : 0]           Bus2IP_Data;
input      [C_SLV_DWIDTH/8-1 : 0]         Bus2IP_BE;
input      [C_NUM_MEM-1 : 0]              Bus2IP_RdCE;
input      [C_NUM_MEM-1 : 0]              Bus2IP_WrCE;
input                                     Bus2IP_Burst;
input      [7 : 0]                        Bus2IP_BurstLength;
input                                     Bus2IP_RdReq;
input                                     Bus2IP_WrReq;
output                                    IP2Bus_AddrAck;
output     [C_SLV_DWIDTH-1 : 0]           IP2Bus_Data;
output                                    IP2Bus_RdAck;
output                                    IP2Bus_WrAck;
output                                    IP2Bus_Error;
output                                    Type_of_xfer;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // --USER nets declarations added here, as needed for user logic

parameter NUM_BYTE_LANES = (C_SLV_DWIDTH+7)/8;
reg [C_SLV_DWIDTH-1 : 0] mem_data_out [0 : C_NUM_MEM-1];
wire [7:0] mem_address;
wire mem_select;
wire mem_read_enable;
reg  [C_SLV_DWIDTH-1 : 0] mem_ip2bus_data;
reg mem_read_ack_dly1;
reg mem_read_ack_dly2; 
wire mem_read_ack; 
wire mem_write_ack; 
reg [15:0] fft_buf[7:0] = {1, 2, 3, 4, 5, 6, 7, 8};
reg [19:0] fft_o_buf[15:0];
reg [6:0] avg_cnt =0;
reg [9:0] mag_cnt =0;
reg [8:0] ram_cnt =0;
reg [8:0] fft_in_cnt =0;
reg [8:0] fft_o_cnt_re =1;
reg [8:0] fft_o_cnt_im =2;
reg [3:0] data_cnt =0;
reg [1:0] FFT_ST =0;
reg [1:0] FFT_RD_ST =0;
reg [1:0] RD_ST =0;
reg soft_reset = 0;
reg done_fft;
reg done_reg =0;
reg data_v =0;
reg mag_val =0;
reg start;
reg fwd_inv;
reg fwd_inv_we;
reg [15 : 0] fft_data;
reg [15 : 0] xn_im;
wire [23 : 0] xk_re;
reg [23 : 0] xk_re_abs;
wire [23 : 0] xk_im;
reg [23 : 0] xk_im_abs;
wire [6 : 0] xn_index;
wire [6 : 0] xk_index;
wire  done;
wire  edone;
wire  rfd;
wire  dv;
wire  noise_phase;



/////////////////////////////////// chethan /////////////////////////////////////////
integer ram [0 :130];
integer unsigned noise_buf [0:128];
integer unsigned ram_out [0 :128];
integer unsigned mag_ram [0 :1023];
//integer START_FFT_REG = ram [9];
reg write_enable ;
reg [31 : 0] data_in;
reg [31 : 0] data_out ;
reg [7 : 0] read_address;
integer unsigned k;
//////////////////////////////////////////////////////////////////////////////////


integer i;
integer byte_index;
  // --USER logic implementation added here

assign IP2Bus_Data  = (mem_read_ack == 1'b1) ? mem_ip2bus_data : 0;
assign IP2Bus_AddrAck = (mem_write_ack || (mem_read_enable && mem_read_ack));
assign IP2Bus_WrAck = mem_write_ack;
assign IP2Bus_RdAck = mem_read_ack;
assign IP2Bus_Error = 0;
//assign noise_phase = ram[129] ;
  
  
// ------------------------------------------------------
// Example code to read/write user memory space
assign mem_select = Bus2IP_CS;
assign mem_read_enable = Bus2IP_RdCE[0];
assign mem_read_ack = (mem_read_ack_dly1 && (!mem_read_ack_dly2));
assign mem_write_ack = Bus2IP_WrCE[0];
assign mem_address = Bus2IP_Addr[9:2];


always @( posedge Bus2IP_Clk)
  begin
    if(Bus2IP_Resetn == 0 ) 
    begin
      mem_read_ack_dly1 <= 0;
      mem_read_ack_dly2 <= 0;
    end
    else
    begin
      mem_read_ack_dly1 <= mem_read_enable;
      mem_read_ack_dly2 <= mem_read_ack_dly1;
    end
  end

   
 always @(posedge Bus2IP_Clk) 
begin
	if(Bus2IP_Resetn == 0 ) 
    begin
      ram[128]			 <= 0;
    end
	else begin
		if(Bus2IP_WrCE == 1)
		begin
			ram[mem_address] <= Bus2IP_Data;
		end
		if(start == 1) begin		// start FFT
			ram[128]		 <= 0;
		end
		read_address <= mem_address;
	end
  end 
   


always @(*)
begin
  
  case (mem_select) 
    1 : mem_ip2bus_data <= (ram_out[read_address] >= noise_buf[read_address])? (ram_out[read_address] - noise_buf[read_address]) :0   ;
    default : mem_ip2bus_data <= 0;
  endcase
end
  
  
 always @( posedge Bus2IP_Clk )
   begin
	if ( Bus2IP_Resetn == 0 )
       begin
		fft_in_cnt 		<= 0; 
       end
	else begin
		case ( FFT_ST )
			2'b00 : begin
						if(busy == 0 && ram[128] == 1) begin
							start 		<= 1;
							fwd_inv_we	<=	1;
							FFT_ST 		<= 2'b01;
						end
						else
							FFT_ST <= FFT_ST;
					end
			2'b01 : begin
						fwd_inv_we		<=0;
						if(fft_in_cnt <128) begin
							fft_data	<= ram[fft_in_cnt];
							fft_in_cnt	<= fft_in_cnt +1;
						end
						else begin
							fft_data	<= ram[fft_in_cnt];
							start		<= 0;
							fwd_inv_we	<=0;
							FFT_ST 		<= 2'b10;
						end
					end
			2'b10 : begin
							fft_in_cnt 		<= 0; 
							FFT_ST <= 2'b00;
					end
			default : FFT_ST <= 2'b00 ;
		endcase
	end
end
  
 ///////////////////////////////////////// Magnitude logic ///////////////////////////////////////////////////////
 
initial
	begin
		for (k = 0; k < 1024; k = k + 1)
		begin
			mag_ram[k] = 0;
		end
end

 always @(posedge Bus2IP_Clk )
begin
	if ( Bus2IP_Resetn == 0 )
       begin
		mag_cnt 		<= 0; 
       end
	else begin
		if(data_v)  begin 
			mag_ram[mag_cnt] 	<= (xk_re_abs *xk_re_abs) + (xk_im_abs * xk_im_abs); 
			mag_cnt				<= mag_cnt + 1;
			mag_val				<= 1;
		end
		else begin
			mag_val				<= 0;
		end
	end
end
 
  always @( posedge Bus2IP_Clk )
begin
	if(dv == 1) begin
		xk_re_abs			<= xk_re[23] ? -xk_re: xk_re;
		xk_im_abs			<= xk_im[23] ? -xk_im: xk_im;
		data_v				<= 1;
	end
	else begin
		data_v				<= 0;
	end
end

//////////////////////////////////////////////////// Average Logic/////////////////////////////////////////////////////////////////////
 
always @( posedge Bus2IP_Clk )
begin
	if ( Bus2IP_Resetn == 0 )
       begin
		avg_cnt 		<= 0;   
       end
	else begin
		ram_out[128] 			 <= {31'b0, done_reg};
		noise_buf[128] 			 <= 0;
		if(mag_val == 1) begin
			if(ram[129]) begin
				noise_buf[avg_cnt]	<= (mag_ram[avg_cnt] + mag_ram[avg_cnt +128] + mag_ram[avg_cnt + 256] + mag_ram[avg_cnt+384] + mag_ram[avg_cnt +512 ] + mag_ram[avg_cnt + 640] + mag_ram[avg_cnt + 768] + mag_ram[avg_cnt + 896]) >>3;
				avg_cnt				<= avg_cnt + 1;
			end
			else begin
				ram_out[avg_cnt]	<= (mag_ram[avg_cnt] + mag_ram[avg_cnt +128] + mag_ram[avg_cnt + 256] + mag_ram[avg_cnt+384] + mag_ram[avg_cnt +512 ] + mag_ram[avg_cnt + 640] + mag_ram[avg_cnt + 768] + mag_ram[avg_cnt + 896]) >>3;
				avg_cnt				<= avg_cnt + 1;
			end
		end				
	end
end
 

 
 always @(posedge Bus2IP_Clk) 
	begin
		if(Bus2IP_Resetn == 0 ) 
		begin
		done_reg			 <= 0;
		end
		else begin
			if(avg_cnt >= 126) begin
				done_reg		<= 1;
			end
			else if(ram[128] == 1) begin
				done_reg		<= 0;
			end
		end
	end

 

  
  // ------------------------------------------------------------
  // Example code to drive IP to Bus signals
  // ------------------------------------------------------------

  xfft_v7_1  i_xfft_v7_1 (
  .clk(Bus2IP_Clk),
  .start(start),  
  .fwd_inv(1'b1),  
  .fwd_inv_we(fwd_inv_we), 
  .rfd(rfd),
  .busy(busy), 
  .edone(edone),
  .done(done),
  .dv(dv), 
  .xn_re(fft_data),
  .xn_im(0),
  .xn_index(xn_index),
  .xk_index(xk_index),
  .xk_re(xk_re),
  .unload(1'b1),
  .xk_im(xk_im)
  );
 
  
endmodule
