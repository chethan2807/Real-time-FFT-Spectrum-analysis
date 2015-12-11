//-----------------------------------------------------------------------------
// system_axi_stream_generator_0_wrapper.v
//-----------------------------------------------------------------------------

module system_axi_stream_generator_0_wrapper
  (
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
  );
  input ACLK;
  input ARESETN;
  output S_AXIS_TREADY;
  input [31:0] S_AXIS_TDATA;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;
  output M_AXIS_TVALID;
  output [31:0] M_AXIS_TDATA;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;

  axi_stream_generator
    axi_stream_generator_0 (
      .ACLK ( ACLK ),
      .ARESETN ( ARESETN ),
      .S_AXIS_TREADY ( S_AXIS_TREADY ),
      .S_AXIS_TDATA ( S_AXIS_TDATA ),
      .S_AXIS_TLAST ( S_AXIS_TLAST ),
      .S_AXIS_TVALID ( S_AXIS_TVALID ),
      .M_AXIS_TVALID ( M_AXIS_TVALID ),
      .M_AXIS_TDATA ( M_AXIS_TDATA ),
      .M_AXIS_TLAST ( M_AXIS_TLAST ),
      .M_AXIS_TREADY ( M_AXIS_TREADY )
    );

endmodule

