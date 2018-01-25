//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Jan 25 12:03:41 2018
//Host        : DESKTOP-1BHE6SR running 64-bit major release  (build 9200)
//Command     : generate_target design_mem2hdmi_wrapper.bd
//Design      : design_mem2hdmi_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_mem2hdmi_wrapper
   (AXI_ACLK,
    AXI_RESETN,
    MB_RESET,
    M_AXI_MM2S_VDMA_araddr,
    M_AXI_MM2S_VDMA_arburst,
    M_AXI_MM2S_VDMA_arcache,
    M_AXI_MM2S_VDMA_arlen,
    M_AXI_MM2S_VDMA_arprot,
    M_AXI_MM2S_VDMA_arready,
    M_AXI_MM2S_VDMA_arsize,
    M_AXI_MM2S_VDMA_arvalid,
    M_AXI_MM2S_VDMA_rdata,
    M_AXI_MM2S_VDMA_rlast,
    M_AXI_MM2S_VDMA_rready,
    M_AXI_MM2S_VDMA_rresp,
    M_AXI_MM2S_VDMA_rvalid,
    SYS_CLK_IN,
    S_AXI_LITE_VDMA_araddr,
    S_AXI_LITE_VDMA_arready,
    S_AXI_LITE_VDMA_arvalid,
    S_AXI_LITE_VDMA_awaddr,
    S_AXI_LITE_VDMA_awready,
    S_AXI_LITE_VDMA_awvalid,
    S_AXI_LITE_VDMA_bready,
    S_AXI_LITE_VDMA_bresp,
    S_AXI_LITE_VDMA_bvalid,
    S_AXI_LITE_VDMA_rdata,
    S_AXI_LITE_VDMA_rready,
    S_AXI_LITE_VDMA_rresp,
    S_AXI_LITE_VDMA_rvalid,
    S_AXI_LITE_VDMA_wdata,
    S_AXI_LITE_VDMA_wready,
    S_AXI_LITE_VDMA_wvalid,
    S_AXI_LITE_VTC_araddr,
    S_AXI_LITE_VTC_arready,
    S_AXI_LITE_VTC_arvalid,
    S_AXI_LITE_VTC_awaddr,
    S_AXI_LITE_VTC_awready,
    S_AXI_LITE_VTC_awvalid,
    S_AXI_LITE_VTC_bready,
    S_AXI_LITE_VTC_bresp,
    S_AXI_LITE_VTC_bvalid,
    S_AXI_LITE_VTC_rdata,
    S_AXI_LITE_VTC_rready,
    S_AXI_LITE_VTC_rresp,
    S_AXI_LITE_VTC_rvalid,
    S_AXI_LITE_VTC_wdata,
    S_AXI_LITE_VTC_wready,
    S_AXI_LITE_VTC_wstrb,
    S_AXI_LITE_VTC_wvalid,
    TMDS_OUT_clk_n,
    TMDS_OUT_clk_p,
    TMDS_OUT_data_n,
    TMDS_OUT_data_p);
  input AXI_ACLK;
  input AXI_RESETN;
  input MB_RESET;
  output [31:0]M_AXI_MM2S_VDMA_araddr;
  output [1:0]M_AXI_MM2S_VDMA_arburst;
  output [3:0]M_AXI_MM2S_VDMA_arcache;
  output [7:0]M_AXI_MM2S_VDMA_arlen;
  output [2:0]M_AXI_MM2S_VDMA_arprot;
  input M_AXI_MM2S_VDMA_arready;
  output [2:0]M_AXI_MM2S_VDMA_arsize;
  output M_AXI_MM2S_VDMA_arvalid;
  input [63:0]M_AXI_MM2S_VDMA_rdata;
  input M_AXI_MM2S_VDMA_rlast;
  output M_AXI_MM2S_VDMA_rready;
  input [1:0]M_AXI_MM2S_VDMA_rresp;
  input M_AXI_MM2S_VDMA_rvalid;
  input SYS_CLK_IN;
  input [8:0]S_AXI_LITE_VDMA_araddr;
  output S_AXI_LITE_VDMA_arready;
  input S_AXI_LITE_VDMA_arvalid;
  input [8:0]S_AXI_LITE_VDMA_awaddr;
  output S_AXI_LITE_VDMA_awready;
  input S_AXI_LITE_VDMA_awvalid;
  input S_AXI_LITE_VDMA_bready;
  output [1:0]S_AXI_LITE_VDMA_bresp;
  output S_AXI_LITE_VDMA_bvalid;
  output [31:0]S_AXI_LITE_VDMA_rdata;
  input S_AXI_LITE_VDMA_rready;
  output [1:0]S_AXI_LITE_VDMA_rresp;
  output S_AXI_LITE_VDMA_rvalid;
  input [31:0]S_AXI_LITE_VDMA_wdata;
  output S_AXI_LITE_VDMA_wready;
  input S_AXI_LITE_VDMA_wvalid;
  input [8:0]S_AXI_LITE_VTC_araddr;
  output S_AXI_LITE_VTC_arready;
  input S_AXI_LITE_VTC_arvalid;
  input [8:0]S_AXI_LITE_VTC_awaddr;
  output S_AXI_LITE_VTC_awready;
  input S_AXI_LITE_VTC_awvalid;
  input S_AXI_LITE_VTC_bready;
  output [1:0]S_AXI_LITE_VTC_bresp;
  output S_AXI_LITE_VTC_bvalid;
  output [31:0]S_AXI_LITE_VTC_rdata;
  input S_AXI_LITE_VTC_rready;
  output [1:0]S_AXI_LITE_VTC_rresp;
  output S_AXI_LITE_VTC_rvalid;
  input [31:0]S_AXI_LITE_VTC_wdata;
  output S_AXI_LITE_VTC_wready;
  input [3:0]S_AXI_LITE_VTC_wstrb;
  input S_AXI_LITE_VTC_wvalid;
  output TMDS_OUT_clk_n;
  output TMDS_OUT_clk_p;
  output [2:0]TMDS_OUT_data_n;
  output [2:0]TMDS_OUT_data_p;

  wire AXI_ACLK;
  wire AXI_RESETN;
  wire MB_RESET;
  wire [31:0]M_AXI_MM2S_VDMA_araddr;
  wire [1:0]M_AXI_MM2S_VDMA_arburst;
  wire [3:0]M_AXI_MM2S_VDMA_arcache;
  wire [7:0]M_AXI_MM2S_VDMA_arlen;
  wire [2:0]M_AXI_MM2S_VDMA_arprot;
  wire M_AXI_MM2S_VDMA_arready;
  wire [2:0]M_AXI_MM2S_VDMA_arsize;
  wire M_AXI_MM2S_VDMA_arvalid;
  wire [63:0]M_AXI_MM2S_VDMA_rdata;
  wire M_AXI_MM2S_VDMA_rlast;
  wire M_AXI_MM2S_VDMA_rready;
  wire [1:0]M_AXI_MM2S_VDMA_rresp;
  wire M_AXI_MM2S_VDMA_rvalid;
  wire SYS_CLK_IN;
  wire [8:0]S_AXI_LITE_VDMA_araddr;
  wire S_AXI_LITE_VDMA_arready;
  wire S_AXI_LITE_VDMA_arvalid;
  wire [8:0]S_AXI_LITE_VDMA_awaddr;
  wire S_AXI_LITE_VDMA_awready;
  wire S_AXI_LITE_VDMA_awvalid;
  wire S_AXI_LITE_VDMA_bready;
  wire [1:0]S_AXI_LITE_VDMA_bresp;
  wire S_AXI_LITE_VDMA_bvalid;
  wire [31:0]S_AXI_LITE_VDMA_rdata;
  wire S_AXI_LITE_VDMA_rready;
  wire [1:0]S_AXI_LITE_VDMA_rresp;
  wire S_AXI_LITE_VDMA_rvalid;
  wire [31:0]S_AXI_LITE_VDMA_wdata;
  wire S_AXI_LITE_VDMA_wready;
  wire S_AXI_LITE_VDMA_wvalid;
  wire [8:0]S_AXI_LITE_VTC_araddr;
  wire S_AXI_LITE_VTC_arready;
  wire S_AXI_LITE_VTC_arvalid;
  wire [8:0]S_AXI_LITE_VTC_awaddr;
  wire S_AXI_LITE_VTC_awready;
  wire S_AXI_LITE_VTC_awvalid;
  wire S_AXI_LITE_VTC_bready;
  wire [1:0]S_AXI_LITE_VTC_bresp;
  wire S_AXI_LITE_VTC_bvalid;
  wire [31:0]S_AXI_LITE_VTC_rdata;
  wire S_AXI_LITE_VTC_rready;
  wire [1:0]S_AXI_LITE_VTC_rresp;
  wire S_AXI_LITE_VTC_rvalid;
  wire [31:0]S_AXI_LITE_VTC_wdata;
  wire S_AXI_LITE_VTC_wready;
  wire [3:0]S_AXI_LITE_VTC_wstrb;
  wire S_AXI_LITE_VTC_wvalid;
  wire TMDS_OUT_clk_n;
  wire TMDS_OUT_clk_p;
  wire [2:0]TMDS_OUT_data_n;
  wire [2:0]TMDS_OUT_data_p;

  design_mem2hdmi design_mem2hdmi_i
       (.AXI_ACLK(AXI_ACLK),
        .AXI_RESETN(AXI_RESETN),
        .MB_RESET(MB_RESET),
        .M_AXI_MM2S_VDMA_araddr(M_AXI_MM2S_VDMA_araddr),
        .M_AXI_MM2S_VDMA_arburst(M_AXI_MM2S_VDMA_arburst),
        .M_AXI_MM2S_VDMA_arcache(M_AXI_MM2S_VDMA_arcache),
        .M_AXI_MM2S_VDMA_arlen(M_AXI_MM2S_VDMA_arlen),
        .M_AXI_MM2S_VDMA_arprot(M_AXI_MM2S_VDMA_arprot),
        .M_AXI_MM2S_VDMA_arready(M_AXI_MM2S_VDMA_arready),
        .M_AXI_MM2S_VDMA_arsize(M_AXI_MM2S_VDMA_arsize),
        .M_AXI_MM2S_VDMA_arvalid(M_AXI_MM2S_VDMA_arvalid),
        .M_AXI_MM2S_VDMA_rdata(M_AXI_MM2S_VDMA_rdata),
        .M_AXI_MM2S_VDMA_rlast(M_AXI_MM2S_VDMA_rlast),
        .M_AXI_MM2S_VDMA_rready(M_AXI_MM2S_VDMA_rready),
        .M_AXI_MM2S_VDMA_rresp(M_AXI_MM2S_VDMA_rresp),
        .M_AXI_MM2S_VDMA_rvalid(M_AXI_MM2S_VDMA_rvalid),
        .SYS_CLK_IN(SYS_CLK_IN),
        .S_AXI_LITE_VDMA_araddr(S_AXI_LITE_VDMA_araddr),
        .S_AXI_LITE_VDMA_arready(S_AXI_LITE_VDMA_arready),
        .S_AXI_LITE_VDMA_arvalid(S_AXI_LITE_VDMA_arvalid),
        .S_AXI_LITE_VDMA_awaddr(S_AXI_LITE_VDMA_awaddr),
        .S_AXI_LITE_VDMA_awready(S_AXI_LITE_VDMA_awready),
        .S_AXI_LITE_VDMA_awvalid(S_AXI_LITE_VDMA_awvalid),
        .S_AXI_LITE_VDMA_bready(S_AXI_LITE_VDMA_bready),
        .S_AXI_LITE_VDMA_bresp(S_AXI_LITE_VDMA_bresp),
        .S_AXI_LITE_VDMA_bvalid(S_AXI_LITE_VDMA_bvalid),
        .S_AXI_LITE_VDMA_rdata(S_AXI_LITE_VDMA_rdata),
        .S_AXI_LITE_VDMA_rready(S_AXI_LITE_VDMA_rready),
        .S_AXI_LITE_VDMA_rresp(S_AXI_LITE_VDMA_rresp),
        .S_AXI_LITE_VDMA_rvalid(S_AXI_LITE_VDMA_rvalid),
        .S_AXI_LITE_VDMA_wdata(S_AXI_LITE_VDMA_wdata),
        .S_AXI_LITE_VDMA_wready(S_AXI_LITE_VDMA_wready),
        .S_AXI_LITE_VDMA_wvalid(S_AXI_LITE_VDMA_wvalid),
        .S_AXI_LITE_VTC_araddr(S_AXI_LITE_VTC_araddr),
        .S_AXI_LITE_VTC_arready(S_AXI_LITE_VTC_arready),
        .S_AXI_LITE_VTC_arvalid(S_AXI_LITE_VTC_arvalid),
        .S_AXI_LITE_VTC_awaddr(S_AXI_LITE_VTC_awaddr),
        .S_AXI_LITE_VTC_awready(S_AXI_LITE_VTC_awready),
        .S_AXI_LITE_VTC_awvalid(S_AXI_LITE_VTC_awvalid),
        .S_AXI_LITE_VTC_bready(S_AXI_LITE_VTC_bready),
        .S_AXI_LITE_VTC_bresp(S_AXI_LITE_VTC_bresp),
        .S_AXI_LITE_VTC_bvalid(S_AXI_LITE_VTC_bvalid),
        .S_AXI_LITE_VTC_rdata(S_AXI_LITE_VTC_rdata),
        .S_AXI_LITE_VTC_rready(S_AXI_LITE_VTC_rready),
        .S_AXI_LITE_VTC_rresp(S_AXI_LITE_VTC_rresp),
        .S_AXI_LITE_VTC_rvalid(S_AXI_LITE_VTC_rvalid),
        .S_AXI_LITE_VTC_wdata(S_AXI_LITE_VTC_wdata),
        .S_AXI_LITE_VTC_wready(S_AXI_LITE_VTC_wready),
        .S_AXI_LITE_VTC_wstrb(S_AXI_LITE_VTC_wstrb),
        .S_AXI_LITE_VTC_wvalid(S_AXI_LITE_VTC_wvalid),
        .TMDS_OUT_clk_n(TMDS_OUT_clk_n),
        .TMDS_OUT_clk_p(TMDS_OUT_clk_p),
        .TMDS_OUT_data_n(TMDS_OUT_data_n),
        .TMDS_OUT_data_p(TMDS_OUT_data_p));
endmodule
