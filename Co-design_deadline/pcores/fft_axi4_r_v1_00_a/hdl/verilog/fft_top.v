module fft_top 
		(input                       Bus2IP_Clk,
		input                        Bus2IP_Resetn,
		input      [31 : 0]          Bus2IP_Data,
		input      [8 : 0]         	 mem_address,
		input                    	 Bus2IP_WrCE,
		input                        mem_select,
		input                        mem_read_enable,
		output reg      [31 : 0]     mem_ip2bus_data
		);

reg 	  aresetn =1;
reg [1:0] RX_ST =0;
reg [1:0] FFT_ST =0;
reg [1:0] FFT_RD_ST =0;
reg [1:0] MAG_ST =0;
reg 	fft_data_tvalid=0;
reg 	s_axis_config_tvalid=0;
reg 	s_axis_data_tvalid =0;
reg 	s_axis_data_tlast=0;
reg 	m_axis_data_tready=0;
wire  	s_axis_config_tready;
wire	s_axis_data_tready;
wire	m_axis_data_tvalid;
wire	m_axis_data_tlast;
wire	event_frame_started;
wire	event_tlast_unexpected;
wire	event_tlast_missing;
wire	event_status_channel_halt;
wire	event_data_in_channel_halt;
wire	event_data_out_channel_halt;
reg [23 : 0] xk_re_abs;
reg [23 : 0] xk_im_abs;
integer unsigned mag_data;
reg [31 : 0] fft_data_reg;
reg [31 : 0] s_axis_data_tdata;
wire [47 : 0] m_axis_data_tdata;

always @(*)
begin
  case (mem_select) 
    1 : begin
			case (mem_address) 
			 0 :mem_ip2bus_data <= mag_data;
			 //1 :mem_ip2bus_data <= {{8{m_axis_data_tdata[47]}}, m_axis_data_tdata[47:24]};
			 2 :mem_ip2bus_data <= {31'd0, m_axis_data_tvalid} ;
			 3 :mem_ip2bus_data <= {31'd0, s_axis_data_tready} ;
			default : mem_ip2bus_data <= m_axis_data_tdata;
			endcase
			end
    default : mem_ip2bus_data <= m_axis_data_tdata;
  endcase
end


///////////////////////////////////////////DATA CAPTURE LOGIC////////////////////////////////////////////////////////
always @( posedge Bus2IP_Clk )
    begin
		if ( Bus2IP_Resetn == 0  )
        begin
			fft_data_tvalid 		<= 0; 
			fft_data_reg 			<= 0; 
			RX_ST 					<= 2'b00;
        end
	else begin
		case ( RX_ST )
			2'b00 : begin
						if(Bus2IP_WrCE == 1) begin
							fft_data_reg 		<= Bus2IP_Data;
							fft_data_tvalid		<=	1;
							RX_ST 			    <= 2'b01;
						end
						else
							RX_ST 				<= RX_ST;
					end
			2'b01 : begin
						fft_data_tvalid			<=	0;
						if(Bus2IP_WrCE == 0) begin
							RX_ST 				<= 2'b00;
						end
					end
			default : RX_ST <= 2'b00 ;
		endcase
	end
end


///////////////////////////////////////////FFT WRITE////////////////////////////////////////////////////////

always @( posedge Bus2IP_Clk )
    begin
		if ( Bus2IP_Resetn == 0  )
        begin
			s_axis_data_tvalid 		<= 0; 
			s_axis_data_tdata 		<= 0; 
			FFT_ST 					<= 2'b00;
        end
	else begin
		case ( FFT_ST )
			2'b00 : begin
						if(fft_data_tvalid == 1) begin
							s_axis_data_tdata 	<= {16'h0, fft_data_reg[31:16]};
							s_axis_data_tvalid	<=	1;
							FFT_ST 			    <= 2'b01;
						end
						else begin
							s_axis_data_tvalid		<=	0;
							FFT_ST 					<= FFT_ST;
						end
					end
			2'b01 : begin
							s_axis_data_tdata 		<= {16'h0, fft_data_reg[15:0]};
							FFT_ST 					<= 2'b00;
					end
			default : FFT_ST <= 2'b00 ;
		endcase
	end
end


///////////////////////////////////////////Read logic////////////////////////////////////////////////////////
  always @( posedge Bus2IP_Clk )
    begin
		if ( Bus2IP_Resetn == 0  )
        begin
			m_axis_data_tready 		<= 0;  
			FFT_RD_ST 				<= 2'b00;
        end
     case ( FFT_RD_ST )
        2'b00 : begin
					m_axis_data_tready		<=	0;
					if(mem_read_enable == 1 && (mem_address==0 )) begin
						FFT_RD_ST 			<= 2'b01;
					end
					else
						FFT_RD_ST <= FFT_RD_ST;
				end
        2'b01 : begin
					if(mem_read_enable == 0 ) begin
						m_axis_data_tready	<=	1;
						FFT_RD_ST 			<= 2'b00;
					end
				end
        default : FFT_RD_ST <= 2'b00 ;
	endcase
end 
////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////Magnitude Logic////////////////////////////////////////////////////////
 always @(posedge Bus2IP_Clk )
begin
	if ( Bus2IP_Resetn == 0 )
       begin
		mag_data 		<= 0; 
		MAG_ST 			<= 0; 
       end
	else begin
		case ( MAG_ST )
			2'b00 : begin
						if(m_axis_data_tvalid == 1 ) begin
							xk_re_abs			<= m_axis_data_tdata[23] ? -m_axis_data_tdata[23:0]: m_axis_data_tdata[23:0];
							xk_im_abs			<= m_axis_data_tdata[47] ? -m_axis_data_tdata[47:24]: m_axis_data_tdata[47:24];
							MAG_ST 				<= 2'b01;
						end
						else
							MAG_ST <= MAG_ST;
					end
			2'b01 : begin
							mag_data		 	<= (xk_re_abs *xk_re_abs) + (xk_im_abs * xk_im_abs); 
						if(m_axis_data_tready) begin
							MAG_ST 				<= 2'b00;
						end
					end
			default : MAG_ST <= 2'b00 ;
		endcase
	end
end
/////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////Soft reset logic//////////////////////////////////////////
always @( posedge Bus2IP_Clk )
    begin
		if ( Bus2IP_Resetn == 0  )
        begin
			aresetn 				<= 0;  
        end
		else begin
			aresetn					<=1;
			if(Bus2IP_WrCE == 1 && (mem_address == 1)) begin
				aresetn				<=  Bus2IP_Data[0]; 
			end
			else
				aresetn				<=  1; 
		end
					
end

 
xfft_v8_0 xfft_v8 (
    .aclk(Bus2IP_Clk), 
    .aresetn(aresetn), 
    .s_axis_config_tvalid(1'b1), 
    .s_axis_data_tvalid(s_axis_data_tvalid),  //i
    .s_axis_data_tlast(1'b0),    //i
    .m_axis_data_tready(m_axis_data_tready),  //i
    .s_axis_config_tready(s_axis_config_tready),  //o
    .s_axis_data_tready(s_axis_data_tready),  //o
    .m_axis_data_tvalid(m_axis_data_tvalid),  //o
    .m_axis_data_tlast(m_axis_data_tlast),  //o
    .event_frame_started(event_frame_started), 
    .event_tlast_unexpected(event_tlast_unexpected), 
    .event_tlast_missing(event_tlast_missing), 
    .event_status_channel_halt(event_status_channel_halt), 
    .event_data_in_channel_halt(event_data_in_channel_halt), 
    .event_data_out_channel_halt(event_data_out_channel_halt), 
    .s_axis_config_tdata(8'b00100111),  //i 10 10 10 10 11
    .s_axis_data_tdata(s_axis_data_tdata), //i
    .m_axis_data_tdata(m_axis_data_tdata) //o
    );
endmodule