//----------------------------------------------------------------------------
// axi_stream_generator - module
//----------------------------------------------------------------------------
// IMPORTANT:
// DO NOT MODIFY THIS FILE EXCEPT IN THE DESIGNATED SECTIONS.
//
// SEARCH FOR --USER TO DETERMINE WHERE CHANGES ARE ALLOWED.
//
// TYPICALLY, THE ONLY ACCEPTABLE CHANGES INVOLVE ADDING NEW
// PORTS AND GENERICS THAT GET PASSED THROUGH TO THE INSTANTIATION
// OF THE USER_LOGIC ENTITY.
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
// Filename:          axi_stream_generator
// Version:           1.00.a
// Description:       Example Axi Streaming core (Verilog).
// Date:              Sat Nov 07 22:23:01 2015 (by Create and Import Peripheral Wizard)
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

////////////////////////////////////////////////////////////////////////////////
//
//
// Definition of Ports
// ACLK              : Synchronous clock
// ARESETN           : System reset, active low
// S_AXIS_TREADY  : Ready to accept data in
// S_AXIS_TDATA   :  Data in 
// S_AXIS_TLAST   : Optional data in qualifier
// S_AXIS_TVALID  : Data in is valid
// M_AXIS_TVALID  :  Data out is valid
// M_AXIS_TDATA   : Data Out
// M_AXIS_TLAST   : Optional data out qualifier
// M_AXIS_TREADY  : Connected slave device is ready to accept data out
//
////////////////////////////////////////////////////////////////////////////////

//----------------------------------------
// Module Section
//----------------------------------------
module axi_stream_generator 
	(
		// ADD USER PORTS BELOW THIS LINE 
		// -- USER ports added here 
		// ADD USER PORTS ABOVE THIS LINE 

		// DO NOT EDIT BELOW THIS LINE ////////////////////
		// Bus protocol ports, do not add or delete. 
		ACLK,
		ARESETN,
		S_AXIS_TREADY,
		S_AXIS_TDATA,
		S_AXIS_TLAST,
		S_AXIS_TVALID,
		M_AXIS_TVALID,
		M_AXIS_TDATA,
		M_AXIS_TLAST,
		M_AXIS_TREADY
		// DO NOT EDIT ABOVE THIS LINE ////////////////////
	);

// ADD USER PORTS BELOW THIS LINE 
// -- USER ports added here 
// ADD USER PORTS ABOVE THIS LINE 

input                                     ACLK;
input                                     ARESETN;
output                                    S_AXIS_TREADY;
input      [31 : 0]                       S_AXIS_TDATA;
input                                     S_AXIS_TLAST;
input                                     S_AXIS_TVALID;
output                                    M_AXIS_TVALID;
output     [31 : 0]                       M_AXIS_TDATA;
output                                    M_AXIS_TLAST;
input                                     M_AXIS_TREADY;



   // Total number of input data.
localparam NUMBER_OF_INPUT_WORDS  = 128;

// Total number of output data
localparam NUMBER_OF_OUTPUT_WORDS = 128;

// Define the states of state machine
localparam Idle  = 3'b100;
localparam Read_Inputs = 3'b010;
localparam Write_Outputs  = 3'b001;

reg [2:0] state;
wire	event_frame_started;
wire	event_tlast_unexpected;
wire	event_tlast_missing;
wire	event_status_channel_halt;
wire	event_data_in_channel_halt;
wire	event_data_out_channel_halt;
wire	s_axis_config_tready;
wire [47 : 0] m_axis_data_tdata;
reg [31:0] mag_data;
reg [23 : 0] xk_re_abs;
reg [23 : 0] xk_im_abs;
reg [31:0] mem_ip2bus_data;
reg [NUMBER_OF_INPUT_WORDS - 1:0] nr_of_reads;
reg [NUMBER_OF_OUTPUT_WORDS - 1:0] nr_of_writes;

assign M_AXIS_TDATA = mag_data;
   
   
always @(*)
	begin
		xk_re_abs			= m_axis_data_tdata[23] ? -m_axis_data_tdata[23:0]: m_axis_data_tdata[23:0];
		xk_im_abs			= m_axis_data_tdata[47] ? -m_axis_data_tdata[47:24]: m_axis_data_tdata[47:24];
		mag_data			= (xk_re_abs *xk_re_abs) + (xk_im_abs * xk_im_abs); 
	end
   
   xfft_v8_0 xfft_v8 (
    .aclk(ACLK), 
    .aresetn(ARESETN), 
    .s_axis_config_tvalid(1'b1), 
    .s_axis_data_tvalid(S_AXIS_TVALID),  //i
    .s_axis_data_tlast(S_AXIS_TLAST),    //i
    .m_axis_data_tready(M_AXIS_TREADY),  //i
    .s_axis_config_tready(s_axis_config_tready),  //o
    .s_axis_data_tready(S_AXIS_TREADY),  //o
    .m_axis_data_tvalid(M_AXIS_TVALID),  //o
    .m_axis_data_tlast(M_AXIS_TLAST),  //o
    .event_frame_started(event_frame_started), 
    .event_tlast_unexpected(event_tlast_unexpected), 
    .event_tlast_missing(event_tlast_missing), 
    .event_status_channel_halt(event_status_channel_halt), 
    .event_data_in_channel_halt(event_data_in_channel_halt), 
    .event_data_out_channel_halt(event_data_out_channel_halt), 
    .s_axis_config_tdata(8'b00100111),  //i 10 10 10 10 11
    .s_axis_data_tdata(S_AXIS_TDATA), //i
    .m_axis_data_tdata(m_axis_data_tdata) //o
    );
   
 
endmodule
