//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Jan 25 12:03:41 2018
//Host        : DESKTOP-1BHE6SR running 64-bit major release  (build 9200)
//Command     : generate_target design_mem2hdmi.bd
//Design      : design_mem2hdmi
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_mem2hdmi,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_mem2hdmi,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_mem2hdmi.hwdef" *) 
module design_mem2hdmi
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_ACLK, ASSOCIATED_BUSIF S_AXI_LITE_VDMA:M_AXI_MM2S_VDMA:S_AXI_LITE_VTC, ASSOCIATED_RESET AXI_RESETN, CLK_DOMAIN design_mem2hdmi_s_axi_lite_aclk_0, FREQ_HZ 100000000, PHASE 0.000" *) input AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RESETN, POLARITY ACTIVE_LOW" *) input AXI_RESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MB_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MB_RESET, POLARITY ACTIVE_HIGH" *) input MB_RESET;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM2S_VDMA, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_mem2hdmi_s_axi_lite_aclk_0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, MAX_BURST_LENGTH 8, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_MM2S_VDMA_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output [1:0]M_AXI_MM2S_VDMA_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output [3:0]M_AXI_MM2S_VDMA_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output [7:0]M_AXI_MM2S_VDMA_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output [2:0]M_AXI_MM2S_VDMA_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) input M_AXI_MM2S_VDMA_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output [2:0]M_AXI_MM2S_VDMA_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output M_AXI_MM2S_VDMA_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) input [63:0]M_AXI_MM2S_VDMA_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) input M_AXI_MM2S_VDMA_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) output M_AXI_MM2S_VDMA_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) input [1:0]M_AXI_MM2S_VDMA_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_VDMA " *) input M_AXI_MM2S_VDMA_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_IN, CLK_DOMAIN design_mem2hdmi_clk_in1_0, FREQ_HZ 125000000, PHASE 0.000" *) input SYS_CLK_IN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_VDMA, ADDR_WIDTH 9, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_mem2hdmi_s_axi_lite_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_LITE_VDMA_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output S_AXI_LITE_VDMA_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input S_AXI_LITE_VDMA_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input [8:0]S_AXI_LITE_VDMA_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output S_AXI_LITE_VDMA_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input S_AXI_LITE_VDMA_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input S_AXI_LITE_VDMA_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output [1:0]S_AXI_LITE_VDMA_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output S_AXI_LITE_VDMA_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output [31:0]S_AXI_LITE_VDMA_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input S_AXI_LITE_VDMA_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output [1:0]S_AXI_LITE_VDMA_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output S_AXI_LITE_VDMA_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input [31:0]S_AXI_LITE_VDMA_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) output S_AXI_LITE_VDMA_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VDMA " *) input S_AXI_LITE_VDMA_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_VTC, ADDR_WIDTH 9, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_mem2hdmi_s_axi_lite_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_LITE_VTC_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output S_AXI_LITE_VTC_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input S_AXI_LITE_VTC_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input [8:0]S_AXI_LITE_VTC_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output S_AXI_LITE_VTC_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input S_AXI_LITE_VTC_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input S_AXI_LITE_VTC_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output [1:0]S_AXI_LITE_VTC_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output S_AXI_LITE_VTC_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output [31:0]S_AXI_LITE_VTC_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input S_AXI_LITE_VTC_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output [1:0]S_AXI_LITE_VTC_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output S_AXI_LITE_VTC_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input [31:0]S_AXI_LITE_VTC_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) output S_AXI_LITE_VTC_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input [3:0]S_AXI_LITE_VTC_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_VTC " *) input S_AXI_LITE_VTC_wvalid;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_OUT " *) output TMDS_OUT_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_OUT " *) output TMDS_OUT_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_OUT " *) output [2:0]TMDS_OUT_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS_OUT " *) output [2:0]TMDS_OUT_data_p;

  wire [8:0]S_AXI_LITE_0_1_ARADDR;
  wire S_AXI_LITE_0_1_ARREADY;
  wire S_AXI_LITE_0_1_ARVALID;
  wire [8:0]S_AXI_LITE_0_1_AWADDR;
  wire S_AXI_LITE_0_1_AWREADY;
  wire S_AXI_LITE_0_1_AWVALID;
  wire S_AXI_LITE_0_1_BREADY;
  wire [1:0]S_AXI_LITE_0_1_BRESP;
  wire S_AXI_LITE_0_1_BVALID;
  wire [31:0]S_AXI_LITE_0_1_RDATA;
  wire S_AXI_LITE_0_1_RREADY;
  wire [1:0]S_AXI_LITE_0_1_RRESP;
  wire S_AXI_LITE_0_1_RVALID;
  wire [31:0]S_AXI_LITE_0_1_WDATA;
  wire S_AXI_LITE_0_1_WREADY;
  wire S_AXI_LITE_0_1_WVALID;
  wire aRst_0_1;
  wire axi_resetn_0_1;
  wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_vdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARPROT;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARSIZE;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire [8:0]ctrl_0_1_ARADDR;
  wire ctrl_0_1_ARREADY;
  wire ctrl_0_1_ARVALID;
  wire [8:0]ctrl_0_1_AWADDR;
  wire ctrl_0_1_AWREADY;
  wire ctrl_0_1_AWVALID;
  wire ctrl_0_1_BREADY;
  wire [1:0]ctrl_0_1_BRESP;
  wire ctrl_0_1_BVALID;
  wire [31:0]ctrl_0_1_RDATA;
  wire ctrl_0_1_RREADY;
  wire [1:0]ctrl_0_1_RRESP;
  wire ctrl_0_1_RVALID;
  wire [31:0]ctrl_0_1_WDATA;
  wire ctrl_0_1_WREADY;
  wire [3:0]ctrl_0_1_WSTRB;
  wire ctrl_0_1_WVALID;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire s_axi_lite_aclk_0_1;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;

  assign M_AXI_MM2S_VDMA_araddr[31:0] = axi_vdma_0_M_AXI_MM2S_ARADDR;
  assign M_AXI_MM2S_VDMA_arburst[1:0] = axi_vdma_0_M_AXI_MM2S_ARBURST;
  assign M_AXI_MM2S_VDMA_arcache[3:0] = axi_vdma_0_M_AXI_MM2S_ARCACHE;
  assign M_AXI_MM2S_VDMA_arlen[7:0] = axi_vdma_0_M_AXI_MM2S_ARLEN;
  assign M_AXI_MM2S_VDMA_arprot[2:0] = axi_vdma_0_M_AXI_MM2S_ARPROT;
  assign M_AXI_MM2S_VDMA_arsize[2:0] = axi_vdma_0_M_AXI_MM2S_ARSIZE;
  assign M_AXI_MM2S_VDMA_arvalid = axi_vdma_0_M_AXI_MM2S_ARVALID;
  assign M_AXI_MM2S_VDMA_rready = axi_vdma_0_M_AXI_MM2S_RREADY;
  assign S_AXI_LITE_0_1_ARADDR = S_AXI_LITE_VDMA_araddr[8:0];
  assign S_AXI_LITE_0_1_ARVALID = S_AXI_LITE_VDMA_arvalid;
  assign S_AXI_LITE_0_1_AWADDR = S_AXI_LITE_VDMA_awaddr[8:0];
  assign S_AXI_LITE_0_1_AWVALID = S_AXI_LITE_VDMA_awvalid;
  assign S_AXI_LITE_0_1_BREADY = S_AXI_LITE_VDMA_bready;
  assign S_AXI_LITE_0_1_RREADY = S_AXI_LITE_VDMA_rready;
  assign S_AXI_LITE_0_1_WDATA = S_AXI_LITE_VDMA_wdata[31:0];
  assign S_AXI_LITE_0_1_WVALID = S_AXI_LITE_VDMA_wvalid;
  assign S_AXI_LITE_VDMA_arready = S_AXI_LITE_0_1_ARREADY;
  assign S_AXI_LITE_VDMA_awready = S_AXI_LITE_0_1_AWREADY;
  assign S_AXI_LITE_VDMA_bresp[1:0] = S_AXI_LITE_0_1_BRESP;
  assign S_AXI_LITE_VDMA_bvalid = S_AXI_LITE_0_1_BVALID;
  assign S_AXI_LITE_VDMA_rdata[31:0] = S_AXI_LITE_0_1_RDATA;
  assign S_AXI_LITE_VDMA_rresp[1:0] = S_AXI_LITE_0_1_RRESP;
  assign S_AXI_LITE_VDMA_rvalid = S_AXI_LITE_0_1_RVALID;
  assign S_AXI_LITE_VDMA_wready = S_AXI_LITE_0_1_WREADY;
  assign S_AXI_LITE_VTC_arready = ctrl_0_1_ARREADY;
  assign S_AXI_LITE_VTC_awready = ctrl_0_1_AWREADY;
  assign S_AXI_LITE_VTC_bresp[1:0] = ctrl_0_1_BRESP;
  assign S_AXI_LITE_VTC_bvalid = ctrl_0_1_BVALID;
  assign S_AXI_LITE_VTC_rdata[31:0] = ctrl_0_1_RDATA;
  assign S_AXI_LITE_VTC_rresp[1:0] = ctrl_0_1_RRESP;
  assign S_AXI_LITE_VTC_rvalid = ctrl_0_1_RVALID;
  assign S_AXI_LITE_VTC_wready = ctrl_0_1_WREADY;
  assign TMDS_OUT_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign TMDS_OUT_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign TMDS_OUT_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign TMDS_OUT_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  assign aRst_0_1 = MB_RESET;
  assign axi_resetn_0_1 = AXI_RESETN;
  assign axi_vdma_0_M_AXI_MM2S_ARREADY = M_AXI_MM2S_VDMA_arready;
  assign axi_vdma_0_M_AXI_MM2S_RDATA = M_AXI_MM2S_VDMA_rdata[63:0];
  assign axi_vdma_0_M_AXI_MM2S_RLAST = M_AXI_MM2S_VDMA_rlast;
  assign axi_vdma_0_M_AXI_MM2S_RRESP = M_AXI_MM2S_VDMA_rresp[1:0];
  assign axi_vdma_0_M_AXI_MM2S_RVALID = M_AXI_MM2S_VDMA_rvalid;
  assign clk_in1_0_1 = SYS_CLK_IN;
  assign ctrl_0_1_ARADDR = S_AXI_LITE_VTC_araddr[8:0];
  assign ctrl_0_1_ARVALID = S_AXI_LITE_VTC_arvalid;
  assign ctrl_0_1_AWADDR = S_AXI_LITE_VTC_awaddr[8:0];
  assign ctrl_0_1_AWVALID = S_AXI_LITE_VTC_awvalid;
  assign ctrl_0_1_BREADY = S_AXI_LITE_VTC_bready;
  assign ctrl_0_1_RREADY = S_AXI_LITE_VTC_rready;
  assign ctrl_0_1_WDATA = S_AXI_LITE_VTC_wdata[31:0];
  assign ctrl_0_1_WSTRB = S_AXI_LITE_VTC_wstrb[3:0];
  assign ctrl_0_1_WVALID = S_AXI_LITE_VTC_wvalid;
  assign s_axi_lite_aclk_0_1 = AXI_ACLK;
  design_mem2hdmi_axi_vdma_0_0 axi_vdma_0
       (.axi_resetn(axi_resetn_0_1),
        .m_axi_mm2s_aclk(s_axi_lite_aclk_0_1),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_aclk(s_axi_lite_aclk_0_1),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .mm2s_frame_ptr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_aclk(s_axi_lite_aclk_0_1),
        .s_axi_lite_araddr(S_AXI_LITE_0_1_ARADDR),
        .s_axi_lite_arready(S_AXI_LITE_0_1_ARREADY),
        .s_axi_lite_arvalid(S_AXI_LITE_0_1_ARVALID),
        .s_axi_lite_awaddr(S_AXI_LITE_0_1_AWADDR),
        .s_axi_lite_awready(S_AXI_LITE_0_1_AWREADY),
        .s_axi_lite_awvalid(S_AXI_LITE_0_1_AWVALID),
        .s_axi_lite_bready(S_AXI_LITE_0_1_BREADY),
        .s_axi_lite_bresp(S_AXI_LITE_0_1_BRESP),
        .s_axi_lite_bvalid(S_AXI_LITE_0_1_BVALID),
        .s_axi_lite_rdata(S_AXI_LITE_0_1_RDATA),
        .s_axi_lite_rready(S_AXI_LITE_0_1_RREADY),
        .s_axi_lite_rresp(S_AXI_LITE_0_1_RRESP),
        .s_axi_lite_rvalid(S_AXI_LITE_0_1_RVALID),
        .s_axi_lite_wdata(S_AXI_LITE_0_1_WDATA),
        .s_axi_lite_wready(S_AXI_LITE_0_1_WREADY),
        .s_axi_lite_wvalid(S_AXI_LITE_0_1_WVALID));
  design_mem2hdmi_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(aRst_0_1));
  design_mem2hdmi_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(clk_wiz_0_clk_out1),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst(aRst_0_1),
        .vid_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC));
  design_mem2hdmi_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(s_axi_lite_aclk_0_1),
        .aclken(1'b1),
        .aresetn(1'b1),
        .fid(1'b0),
        .s_axis_video_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_video_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_video_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_video_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_video_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(clk_wiz_0_clk_out1),
        .vid_io_out_reset(1'b0),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  design_mem2hdmi_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(clk_wiz_0_clk_out1),
        .clken(1'b1),
        .fsync_in(1'b0),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(1'b1),
        .s_axi_aclk(s_axi_lite_aclk_0_1),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(ctrl_0_1_ARADDR),
        .s_axi_aresetn(axi_resetn_0_1),
        .s_axi_arready(ctrl_0_1_ARREADY),
        .s_axi_arvalid(ctrl_0_1_ARVALID),
        .s_axi_awaddr(ctrl_0_1_AWADDR),
        .s_axi_awready(ctrl_0_1_AWREADY),
        .s_axi_awvalid(ctrl_0_1_AWVALID),
        .s_axi_bready(ctrl_0_1_BREADY),
        .s_axi_bresp(ctrl_0_1_BRESP),
        .s_axi_bvalid(ctrl_0_1_BVALID),
        .s_axi_rdata(ctrl_0_1_RDATA),
        .s_axi_rready(ctrl_0_1_RREADY),
        .s_axi_rresp(ctrl_0_1_RRESP),
        .s_axi_rvalid(ctrl_0_1_RVALID),
        .s_axi_wdata(ctrl_0_1_WDATA),
        .s_axi_wready(ctrl_0_1_WREADY),
        .s_axi_wstrb(ctrl_0_1_WSTRB),
        .s_axi_wvalid(ctrl_0_1_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
endmodule
