////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: text_synthesis.v
// /___/   /\     Timestamp: Tue Sep 15 16:56:19 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim text.ngc text_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: text.ngc
// Output file	: F:\wash_text\netgen\synthesis\text_synthesis.v
// # of Modules	: 1
// Design Name	: text
// Xilinx        : M:\ise\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module text (
  clk, p, power, water, A, C, m, tss, lev_h, lev_l
);
  input clk;
  output p;
  input power;
  input water;
  output [3 : 0] A;
  output [6 : 0] C;
  output [3 : 0] m;
  output [2 : 0] tss;
  output [4 : 0] lev_h;
  output [4 : 0] lev_l;
  wire A_0_4;
  wire A_1_5;
  wire A_2_6;
  wire A_3_7;
  wire C_0_19;
  wire C_1_20;
  wire C_2_21;
  wire C_3_22;
  wire C_4_23;
  wire C_5_24;
  wire C_6_25;
  wire C_cmp_le0000;
  wire \C_mux0000<0>0_27 ;
  wire \C_mux0000<0>11_28 ;
  wire \C_mux0000<0>33_29 ;
  wire \C_mux0000<0>54_30 ;
  wire \C_mux0000<0>92 ;
  wire \C_mux0000[1] ;
  wire \C_mux0000<1>30 ;
  wire \C_mux0000<1>301_34 ;
  wire \C_mux0000[2] ;
  wire \C_mux0000<2>17 ;
  wire \C_mux0000<2>171_37 ;
  wire \C_mux0000<2>32_38 ;
  wire \C_mux0000<3>0_39 ;
  wire \C_mux0000<3>45_40 ;
  wire \C_mux0000<3>92_41 ;
  wire \C_mux0000<4>0_42 ;
  wire \C_mux0000<4>32_43 ;
  wire \C_mux0000<4>59_44 ;
  wire \C_mux0000<4>78_45 ;
  wire \C_mux0000<4>83 ;
  wire \C_mux0000<5>0_47 ;
  wire \C_mux0000<5>12_48 ;
  wire \C_mux0000<5>27_49 ;
  wire \C_mux0000<5>51_50 ;
  wire \C_mux0000<5>97 ;
  wire \C_mux0000[6] ;
  wire \C_mux0000<6>54_53 ;
  wire \Mcompar_t_cmp_ge0000_cy<0>_rt_56 ;
  wire \Mcompar_t_cmp_ge0000_cy<2>_rt_59 ;
  wire \Mcompar_t_cmp_ge0000_lut[1] ;
  wire \Mcompar_t_cmp_ge0000_lut[3] ;
  wire \Mcompar_t_cmp_ge0000_lut[4] ;
  wire \Mcompar_t_cmp_ge0000_lut[5] ;
  wire \Mcompar_t_cmp_ge0000_lut[6] ;
  wire \Mcompar_t_cmp_ge0000_lut[7] ;
  wire \Mcompar_t_cmp_ge0000_lut[8] ;
  wire \Mcompar_tss_cmp_ge0000_cy<0>_rt_73 ;
  wire \Mcompar_tss_cmp_ge0000_cy<2>_rt_76 ;
  wire \Mcompar_tss_cmp_ge0000_lut[1] ;
  wire \Mcompar_tss_cmp_ge0000_lut[3] ;
  wire \Mcompar_tss_cmp_ge0000_lut[4] ;
  wire \Mcompar_tss_cmp_ge0000_lut[5] ;
  wire \Mcompar_tss_cmp_ge0000_lut[6] ;
  wire \Mcompar_tss_cmp_ge0000_lut[7] ;
  wire \Mcompar_tss_cmp_ge0000_lut[8] ;
  wire \Mcount_t1_cy<10>_rt_91 ;
  wire \Mcount_t1_cy<11>_rt_93 ;
  wire \Mcount_t1_cy<12>_rt_95 ;
  wire \Mcount_t1_cy<13>_rt_97 ;
  wire \Mcount_t1_cy<14>_rt_99 ;
  wire \Mcount_t1_cy<15>_rt_101 ;
  wire \Mcount_t1_cy<16>_rt_103 ;
  wire \Mcount_t1_cy<17>_rt_105 ;
  wire \Mcount_t1_cy<18>_rt_107 ;
  wire \Mcount_t1_cy<19>_rt_109 ;
  wire \Mcount_t1_cy<1>_rt_111 ;
  wire \Mcount_t1_cy<20>_rt_113 ;
  wire \Mcount_t1_cy<21>_rt_115 ;
  wire \Mcount_t1_cy<22>_rt_117 ;
  wire \Mcount_t1_cy<23>_rt_119 ;
  wire \Mcount_t1_cy<2>_rt_121 ;
  wire \Mcount_t1_cy<3>_rt_123 ;
  wire \Mcount_t1_cy<4>_rt_125 ;
  wire \Mcount_t1_cy<5>_rt_127 ;
  wire \Mcount_t1_cy<6>_rt_129 ;
  wire \Mcount_t1_cy<7>_rt_131 ;
  wire \Mcount_t1_cy<8>_rt_133 ;
  wire \Mcount_t1_cy<9>_rt_135 ;
  wire \Mcount_t1_xor<24>_rt_137 ;
  wire \Mcount_t_cy<10>_rt_140 ;
  wire \Mcount_t_cy<11>_rt_142 ;
  wire \Mcount_t_cy<12>_rt_144 ;
  wire \Mcount_t_cy<13>_rt_146 ;
  wire \Mcount_t_cy<14>_rt_148 ;
  wire \Mcount_t_cy<15>_rt_150 ;
  wire \Mcount_t_cy<16>_rt_152 ;
  wire \Mcount_t_cy<17>_rt_154 ;
  wire \Mcount_t_cy<18>_rt_156 ;
  wire \Mcount_t_cy<19>_rt_158 ;
  wire \Mcount_t_cy<1>_rt_160 ;
  wire \Mcount_t_cy<20>_rt_162 ;
  wire \Mcount_t_cy<21>_rt_164 ;
  wire \Mcount_t_cy<22>_rt_166 ;
  wire \Mcount_t_cy<23>_rt_168 ;
  wire \Mcount_t_cy<2>_rt_170 ;
  wire \Mcount_t_cy<3>_rt_172 ;
  wire \Mcount_t_cy<4>_rt_174 ;
  wire \Mcount_t_cy<5>_rt_176 ;
  wire \Mcount_t_cy<6>_rt_178 ;
  wire \Mcount_t_cy<7>_rt_180 ;
  wire \Mcount_t_cy<8>_rt_182 ;
  wire \Mcount_t_cy<9>_rt_184 ;
  wire \Mcount_t_xor<24>_rt_186 ;
  wire N0;
  wire N1;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N31;
  wire N32;
  wire \Result<0>1 ;
  wire \Result<0>2 ;
  wire \Result<0>3 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \Result<1>1 ;
  wire \Result<1>2 ;
  wire \Result<1>3 ;
  wire \Result<20>1 ;
  wire \Result<21>1 ;
  wire \Result<22>1 ;
  wire \Result<23>1 ;
  wire \Result<24>1 ;
  wire \Result<2>1 ;
  wire \Result<2>2 ;
  wire \Result<2>3 ;
  wire \Result<3>1 ;
  wire \Result<3>2 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire clk_BUFGP_254;
  wire lev_h_0_260;
  wire lev_h_Acst_inv;
  wire lev_h_not0001_263;
  wire lev_l_0_269;
  wire lev_l_1_270;
  wire lev_l_2_271;
  wire lev_l_3_272;
  wire lev_l_4_273;
  wire m_0_283;
  wire m_1_284;
  wire m_2_285;
  wire m_3_286;
  wire m_and0000;
  wire m_not0001;
  wire p_OBUF_290;
  wire power_BUFGP_292;
  wire t_cmp_ge0000;
  wire ts_344;
  wire ts_not0001;
  wire tss_0_349;
  wire tss_1_350;
  wire tss_2_351;
  wire tss_and0000;
  wire tss_cmp_ge0000;
  wire water_IBUF_355;
  wire water_IBUF1;
  wire [3 : 0] A_mux0000;
  wire [2 : 2] Madd_lev_l_addsub0000_cy;
  wire [7 : 0] Mcompar_t_cmp_ge0000_cy;
  wire [7 : 0] Mcompar_tss_cmp_ge0000_cy;
  wire [23 : 0] Mcount_t1_cy;
  wire [0 : 0] Mcount_t1_lut;
  wire [23 : 0] Mcount_t_cy;
  wire [0 : 0] Mcount_t_lut;
  wire [24 : 0] Result;
  wire [4 : 4] lev_h_mux0000;
  wire [4 : 0] lev_l_mux0000;
  wire [24 : 0] t1;
  wire [24 : 0] t;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  p_3 (
    .C(power_BUFGP_292),
    .D(lev_h_Acst_inv),
    .Q(p_OBUF_290)
  );
  FD   C_0 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000[6] ),
    .Q(C_0_19)
  );
  FD   C_4 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000[2] ),
    .Q(C_4_23)
  );
  FD   C_5 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000[1] ),
    .Q(C_5_24)
  );
  FD   A_0 (
    .C(clk_BUFGP_254),
    .D(A_mux0000[3]),
    .Q(A_0_4)
  );
  FD   A_1 (
    .C(clk_BUFGP_254),
    .D(A_mux0000[2]),
    .Q(A_1_5)
  );
  FD   A_2 (
    .C(clk_BUFGP_254),
    .D(A_mux0000[1]),
    .Q(A_2_6)
  );
  FD   A_3 (
    .C(clk_BUFGP_254),
    .D(A_mux0000[0]),
    .Q(A_3_7)
  );
  FDE #(
    .INIT ( 1'b1 ))
  ts (
    .C(clk_BUFGP_254),
    .CE(t_cmp_ge0000),
    .D(ts_not0001),
    .Q(ts_344)
  );
  FDC #(
    .INIT ( 1'b0 ))
  lev_l_0 (
    .C(water_IBUF_355),
    .CLR(lev_h_Acst_inv),
    .D(lev_l_mux0000[4]),
    .Q(lev_l_0_269)
  );
  FDC #(
    .INIT ( 1'b0 ))
  lev_l_1 (
    .C(water_IBUF_355),
    .CLR(lev_h_Acst_inv),
    .D(lev_l_mux0000[3]),
    .Q(lev_l_1_270)
  );
  FDC #(
    .INIT ( 1'b0 ))
  lev_l_2 (
    .C(water_IBUF_355),
    .CLR(lev_h_Acst_inv),
    .D(lev_l_mux0000[2]),
    .Q(lev_l_2_271)
  );
  FDC #(
    .INIT ( 1'b0 ))
  lev_l_3 (
    .C(water_IBUF_355),
    .CLR(lev_h_Acst_inv),
    .D(lev_l_mux0000[1]),
    .Q(lev_l_3_272)
  );
  FDC #(
    .INIT ( 1'b0 ))
  lev_l_4 (
    .C(water_IBUF_355),
    .CLR(lev_h_Acst_inv),
    .D(lev_l_mux0000[0]),
    .Q(lev_l_4_273)
  );
  FDPE #(
    .INIT ( 1'b1 ))
  lev_h_0 (
    .C(water_IBUF_355),
    .CE(lev_h_not0001_263),
    .D(lev_h_mux0000[4]),
    .PRE(lev_h_Acst_inv),
    .Q(lev_h_0_260)
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_0 (
    .C(clk_BUFGP_254),
    .D(Result[0]),
    .R(tss_cmp_ge0000),
    .Q(t1[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_1 (
    .C(clk_BUFGP_254),
    .D(Result[1]),
    .R(tss_cmp_ge0000),
    .Q(t1[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_2 (
    .C(clk_BUFGP_254),
    .D(Result[2]),
    .R(tss_cmp_ge0000),
    .Q(t1[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_3 (
    .C(clk_BUFGP_254),
    .D(Result[3]),
    .R(tss_cmp_ge0000),
    .Q(t1[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_4 (
    .C(clk_BUFGP_254),
    .D(Result[4]),
    .R(tss_cmp_ge0000),
    .Q(t1[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_5 (
    .C(clk_BUFGP_254),
    .D(Result[5]),
    .R(tss_cmp_ge0000),
    .Q(t1[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_6 (
    .C(clk_BUFGP_254),
    .D(Result[6]),
    .R(tss_cmp_ge0000),
    .Q(t1[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_7 (
    .C(clk_BUFGP_254),
    .D(Result[7]),
    .R(tss_cmp_ge0000),
    .Q(t1[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_8 (
    .C(clk_BUFGP_254),
    .D(Result[8]),
    .R(tss_cmp_ge0000),
    .Q(t1[8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_9 (
    .C(clk_BUFGP_254),
    .D(Result[9]),
    .R(tss_cmp_ge0000),
    .Q(t1[9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_10 (
    .C(clk_BUFGP_254),
    .D(Result[10]),
    .R(tss_cmp_ge0000),
    .Q(t1[10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_11 (
    .C(clk_BUFGP_254),
    .D(Result[11]),
    .R(tss_cmp_ge0000),
    .Q(t1[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_12 (
    .C(clk_BUFGP_254),
    .D(Result[12]),
    .R(tss_cmp_ge0000),
    .Q(t1[12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_13 (
    .C(clk_BUFGP_254),
    .D(Result[13]),
    .R(tss_cmp_ge0000),
    .Q(t1[13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_14 (
    .C(clk_BUFGP_254),
    .D(Result[14]),
    .R(tss_cmp_ge0000),
    .Q(t1[14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_15 (
    .C(clk_BUFGP_254),
    .D(Result[15]),
    .R(tss_cmp_ge0000),
    .Q(t1[15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_16 (
    .C(clk_BUFGP_254),
    .D(Result[16]),
    .R(tss_cmp_ge0000),
    .Q(t1[16])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_17 (
    .C(clk_BUFGP_254),
    .D(Result[17]),
    .R(tss_cmp_ge0000),
    .Q(t1[17])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_18 (
    .C(clk_BUFGP_254),
    .D(Result[18]),
    .R(tss_cmp_ge0000),
    .Q(t1[18])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_19 (
    .C(clk_BUFGP_254),
    .D(Result[19]),
    .R(tss_cmp_ge0000),
    .Q(t1[19])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_20 (
    .C(clk_BUFGP_254),
    .D(Result[20]),
    .R(tss_cmp_ge0000),
    .Q(t1[20])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_21 (
    .C(clk_BUFGP_254),
    .D(Result[21]),
    .R(tss_cmp_ge0000),
    .Q(t1[21])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_22 (
    .C(clk_BUFGP_254),
    .D(Result[22]),
    .R(tss_cmp_ge0000),
    .Q(t1[22])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_23 (
    .C(clk_BUFGP_254),
    .D(Result[23]),
    .R(tss_cmp_ge0000),
    .Q(t1[23])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t1_24 (
    .C(clk_BUFGP_254),
    .D(Result[24]),
    .R(tss_cmp_ge0000),
    .Q(t1[24])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  m_0 (
    .C(ts_344),
    .CE(m_not0001),
    .CLR(m_and0000),
    .D(\Result<0>1 ),
    .Q(m_0_283)
  );
  FDCE #(
    .INIT ( 1'b1 ))
  m_1 (
    .C(ts_344),
    .CE(m_not0001),
    .CLR(m_and0000),
    .D(\Result<1>1 ),
    .Q(m_1_284)
  );
  FDCE #(
    .INIT ( 1'b1 ))
  m_2 (
    .C(ts_344),
    .CE(m_not0001),
    .CLR(m_and0000),
    .D(\Result<2>1 ),
    .Q(m_2_285)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  m_3 (
    .C(ts_344),
    .CE(m_not0001),
    .CLR(m_and0000),
    .D(\Result<3>1 ),
    .Q(m_3_286)
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_0 (
    .C(clk_BUFGP_254),
    .D(\Result<0>2 ),
    .R(t_cmp_ge0000),
    .Q(t[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_1 (
    .C(clk_BUFGP_254),
    .D(\Result<1>2 ),
    .R(t_cmp_ge0000),
    .Q(t[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_2 (
    .C(clk_BUFGP_254),
    .D(\Result<2>2 ),
    .R(t_cmp_ge0000),
    .Q(t[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_3 (
    .C(clk_BUFGP_254),
    .D(\Result<3>2 ),
    .R(t_cmp_ge0000),
    .Q(t[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_4 (
    .C(clk_BUFGP_254),
    .D(\Result<4>1 ),
    .R(t_cmp_ge0000),
    .Q(t[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_5 (
    .C(clk_BUFGP_254),
    .D(\Result<5>1 ),
    .R(t_cmp_ge0000),
    .Q(t[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_6 (
    .C(clk_BUFGP_254),
    .D(\Result<6>1 ),
    .R(t_cmp_ge0000),
    .Q(t[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_7 (
    .C(clk_BUFGP_254),
    .D(\Result<7>1 ),
    .R(t_cmp_ge0000),
    .Q(t[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_8 (
    .C(clk_BUFGP_254),
    .D(\Result<8>1 ),
    .R(t_cmp_ge0000),
    .Q(t[8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_9 (
    .C(clk_BUFGP_254),
    .D(\Result<9>1 ),
    .R(t_cmp_ge0000),
    .Q(t[9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_10 (
    .C(clk_BUFGP_254),
    .D(\Result<10>1 ),
    .R(t_cmp_ge0000),
    .Q(t[10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_11 (
    .C(clk_BUFGP_254),
    .D(\Result<11>1 ),
    .R(t_cmp_ge0000),
    .Q(t[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_12 (
    .C(clk_BUFGP_254),
    .D(\Result<12>1 ),
    .R(t_cmp_ge0000),
    .Q(t[12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_13 (
    .C(clk_BUFGP_254),
    .D(\Result<13>1 ),
    .R(t_cmp_ge0000),
    .Q(t[13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_14 (
    .C(clk_BUFGP_254),
    .D(\Result<14>1 ),
    .R(t_cmp_ge0000),
    .Q(t[14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_15 (
    .C(clk_BUFGP_254),
    .D(\Result<15>1 ),
    .R(t_cmp_ge0000),
    .Q(t[15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_16 (
    .C(clk_BUFGP_254),
    .D(\Result<16>1 ),
    .R(t_cmp_ge0000),
    .Q(t[16])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_17 (
    .C(clk_BUFGP_254),
    .D(\Result<17>1 ),
    .R(t_cmp_ge0000),
    .Q(t[17])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_18 (
    .C(clk_BUFGP_254),
    .D(\Result<18>1 ),
    .R(t_cmp_ge0000),
    .Q(t[18])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_19 (
    .C(clk_BUFGP_254),
    .D(\Result<19>1 ),
    .R(t_cmp_ge0000),
    .Q(t[19])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_20 (
    .C(clk_BUFGP_254),
    .D(\Result<20>1 ),
    .R(t_cmp_ge0000),
    .Q(t[20])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_21 (
    .C(clk_BUFGP_254),
    .D(\Result<21>1 ),
    .R(t_cmp_ge0000),
    .Q(t[21])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_22 (
    .C(clk_BUFGP_254),
    .D(\Result<22>1 ),
    .R(t_cmp_ge0000),
    .Q(t[22])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_23 (
    .C(clk_BUFGP_254),
    .D(\Result<23>1 ),
    .R(t_cmp_ge0000),
    .Q(t[23])
  );
  FDR #(
    .INIT ( 1'b0 ))
  t_24 (
    .C(clk_BUFGP_254),
    .D(\Result<24>1 ),
    .R(t_cmp_ge0000),
    .Q(t[24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  tss_0 (
    .C(clk_BUFGP_254),
    .CE(tss_cmp_ge0000),
    .D(\Result<0>3 ),
    .R(tss_and0000),
    .Q(tss_0_349)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  tss_1 (
    .C(clk_BUFGP_254),
    .CE(tss_cmp_ge0000),
    .D(\Result<1>3 ),
    .R(tss_and0000),
    .Q(tss_1_350)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  tss_2 (
    .C(clk_BUFGP_254),
    .CE(tss_cmp_ge0000),
    .D(\Result<2>3 ),
    .R(tss_and0000),
    .Q(tss_2_351)
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_t_cmp_ge0000_cy<0>_rt_56 ),
    .O(Mcompar_t_cmp_ge0000_cy[0])
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<1>  (
    .CI(Mcompar_t_cmp_ge0000_cy[0]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[1] ),
    .O(Mcompar_t_cmp_ge0000_cy[1])
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<2>  (
    .CI(Mcompar_t_cmp_ge0000_cy[1]),
    .DI(N0),
    .S(\Mcompar_t_cmp_ge0000_cy<2>_rt_59 ),
    .O(Mcompar_t_cmp_ge0000_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_t_cmp_ge0000_lut<3>  (
    .I0(t[4]),
    .I1(t[5]),
    .I2(t[6]),
    .I3(t[7]),
    .O(\Mcompar_t_cmp_ge0000_lut[3] )
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<3>  (
    .CI(Mcompar_t_cmp_ge0000_cy[2]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[3] ),
    .O(Mcompar_t_cmp_ge0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_t_cmp_ge0000_lut<4>  (
    .I0(t[8]),
    .I1(t[9]),
    .I2(t[10]),
    .I3(t[11]),
    .O(\Mcompar_t_cmp_ge0000_lut[4] )
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<4>  (
    .CI(Mcompar_t_cmp_ge0000_cy[3]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[4] ),
    .O(Mcompar_t_cmp_ge0000_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_t_cmp_ge0000_lut<5>  (
    .I0(t[12]),
    .I1(t[13]),
    .I2(t[14]),
    .I3(t[15]),
    .O(\Mcompar_t_cmp_ge0000_lut[5] )
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<5>  (
    .CI(Mcompar_t_cmp_ge0000_cy[4]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[5] ),
    .O(Mcompar_t_cmp_ge0000_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_t_cmp_ge0000_lut<6>  (
    .I0(t[16]),
    .I1(t[17]),
    .I2(t[18]),
    .I3(t[19]),
    .O(\Mcompar_t_cmp_ge0000_lut[6] )
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<6>  (
    .CI(Mcompar_t_cmp_ge0000_cy[5]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[6] ),
    .O(Mcompar_t_cmp_ge0000_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_t_cmp_ge0000_lut<7>  (
    .I0(t[20]),
    .I1(t[21]),
    .I2(t[22]),
    .I3(t[23]),
    .O(\Mcompar_t_cmp_ge0000_lut[7] )
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<7>  (
    .CI(Mcompar_t_cmp_ge0000_cy[6]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[7] ),
    .O(Mcompar_t_cmp_ge0000_cy[7])
  );
  MUXCY   \Mcompar_t_cmp_ge0000_cy<8>  (
    .CI(Mcompar_t_cmp_ge0000_cy[7]),
    .DI(N1),
    .S(\Mcompar_t_cmp_ge0000_lut[8] ),
    .O(t_cmp_ge0000)
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_tss_cmp_ge0000_cy<0>_rt_73 ),
    .O(Mcompar_tss_cmp_ge0000_cy[0])
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<1>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[0]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[1] ),
    .O(Mcompar_tss_cmp_ge0000_cy[1])
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<2>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[1]),
    .DI(N0),
    .S(\Mcompar_tss_cmp_ge0000_cy<2>_rt_76 ),
    .O(Mcompar_tss_cmp_ge0000_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_tss_cmp_ge0000_lut<3>  (
    .I0(t1[3]),
    .I1(t1[4]),
    .I2(t1[5]),
    .I3(t1[6]),
    .O(\Mcompar_tss_cmp_ge0000_lut[3] )
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<3>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[2]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[3] ),
    .O(Mcompar_tss_cmp_ge0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_tss_cmp_ge0000_lut<4>  (
    .I0(t1[7]),
    .I1(t1[8]),
    .I2(t1[9]),
    .I3(t1[10]),
    .O(\Mcompar_tss_cmp_ge0000_lut[4] )
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<4>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[3]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[4] ),
    .O(Mcompar_tss_cmp_ge0000_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_tss_cmp_ge0000_lut<5>  (
    .I0(t1[11]),
    .I1(t1[12]),
    .I2(t1[13]),
    .I3(t1[14]),
    .O(\Mcompar_tss_cmp_ge0000_lut[5] )
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<5>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[4]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[5] ),
    .O(Mcompar_tss_cmp_ge0000_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_tss_cmp_ge0000_lut<6>  (
    .I0(t1[15]),
    .I1(t1[16]),
    .I2(t1[17]),
    .I3(t1[18]),
    .O(\Mcompar_tss_cmp_ge0000_lut[6] )
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<6>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[5]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[6] ),
    .O(Mcompar_tss_cmp_ge0000_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_tss_cmp_ge0000_lut<7>  (
    .I0(t1[19]),
    .I1(t1[20]),
    .I2(t1[21]),
    .I3(t1[22]),
    .O(\Mcompar_tss_cmp_ge0000_lut[7] )
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<7>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[6]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[7] ),
    .O(Mcompar_tss_cmp_ge0000_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_tss_cmp_ge0000_lut<8>  (
    .I0(t1[23]),
    .I1(t1[24]),
    .O(\Mcompar_tss_cmp_ge0000_lut[8] )
  );
  MUXCY   \Mcompar_tss_cmp_ge0000_cy<8>  (
    .CI(Mcompar_tss_cmp_ge0000_cy[7]),
    .DI(N1),
    .S(\Mcompar_tss_cmp_ge0000_lut[8] ),
    .O(tss_cmp_ge0000)
  );
  MUXCY   \Mcount_t1_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_t1_lut[0]),
    .O(Mcount_t1_cy[0])
  );
  XORCY   \Mcount_t1_xor<0>  (
    .CI(N0),
    .LI(Mcount_t1_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_t1_cy<1>  (
    .CI(Mcount_t1_cy[0]),
    .DI(N0),
    .S(\Mcount_t1_cy<1>_rt_111 ),
    .O(Mcount_t1_cy[1])
  );
  XORCY   \Mcount_t1_xor<1>  (
    .CI(Mcount_t1_cy[0]),
    .LI(\Mcount_t1_cy<1>_rt_111 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_t1_cy<2>  (
    .CI(Mcount_t1_cy[1]),
    .DI(N0),
    .S(\Mcount_t1_cy<2>_rt_121 ),
    .O(Mcount_t1_cy[2])
  );
  XORCY   \Mcount_t1_xor<2>  (
    .CI(Mcount_t1_cy[1]),
    .LI(\Mcount_t1_cy<2>_rt_121 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_t1_cy<3>  (
    .CI(Mcount_t1_cy[2]),
    .DI(N0),
    .S(\Mcount_t1_cy<3>_rt_123 ),
    .O(Mcount_t1_cy[3])
  );
  XORCY   \Mcount_t1_xor<3>  (
    .CI(Mcount_t1_cy[2]),
    .LI(\Mcount_t1_cy<3>_rt_123 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_t1_cy<4>  (
    .CI(Mcount_t1_cy[3]),
    .DI(N0),
    .S(\Mcount_t1_cy<4>_rt_125 ),
    .O(Mcount_t1_cy[4])
  );
  XORCY   \Mcount_t1_xor<4>  (
    .CI(Mcount_t1_cy[3]),
    .LI(\Mcount_t1_cy<4>_rt_125 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_t1_cy<5>  (
    .CI(Mcount_t1_cy[4]),
    .DI(N0),
    .S(\Mcount_t1_cy<5>_rt_127 ),
    .O(Mcount_t1_cy[5])
  );
  XORCY   \Mcount_t1_xor<5>  (
    .CI(Mcount_t1_cy[4]),
    .LI(\Mcount_t1_cy<5>_rt_127 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_t1_cy<6>  (
    .CI(Mcount_t1_cy[5]),
    .DI(N0),
    .S(\Mcount_t1_cy<6>_rt_129 ),
    .O(Mcount_t1_cy[6])
  );
  XORCY   \Mcount_t1_xor<6>  (
    .CI(Mcount_t1_cy[5]),
    .LI(\Mcount_t1_cy<6>_rt_129 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_t1_cy<7>  (
    .CI(Mcount_t1_cy[6]),
    .DI(N0),
    .S(\Mcount_t1_cy<7>_rt_131 ),
    .O(Mcount_t1_cy[7])
  );
  XORCY   \Mcount_t1_xor<7>  (
    .CI(Mcount_t1_cy[6]),
    .LI(\Mcount_t1_cy<7>_rt_131 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_t1_cy<8>  (
    .CI(Mcount_t1_cy[7]),
    .DI(N0),
    .S(\Mcount_t1_cy<8>_rt_133 ),
    .O(Mcount_t1_cy[8])
  );
  XORCY   \Mcount_t1_xor<8>  (
    .CI(Mcount_t1_cy[7]),
    .LI(\Mcount_t1_cy<8>_rt_133 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_t1_cy<9>  (
    .CI(Mcount_t1_cy[8]),
    .DI(N0),
    .S(\Mcount_t1_cy<9>_rt_135 ),
    .O(Mcount_t1_cy[9])
  );
  XORCY   \Mcount_t1_xor<9>  (
    .CI(Mcount_t1_cy[8]),
    .LI(\Mcount_t1_cy<9>_rt_135 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_t1_cy<10>  (
    .CI(Mcount_t1_cy[9]),
    .DI(N0),
    .S(\Mcount_t1_cy<10>_rt_91 ),
    .O(Mcount_t1_cy[10])
  );
  XORCY   \Mcount_t1_xor<10>  (
    .CI(Mcount_t1_cy[9]),
    .LI(\Mcount_t1_cy<10>_rt_91 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_t1_cy<11>  (
    .CI(Mcount_t1_cy[10]),
    .DI(N0),
    .S(\Mcount_t1_cy<11>_rt_93 ),
    .O(Mcount_t1_cy[11])
  );
  XORCY   \Mcount_t1_xor<11>  (
    .CI(Mcount_t1_cy[10]),
    .LI(\Mcount_t1_cy<11>_rt_93 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_t1_cy<12>  (
    .CI(Mcount_t1_cy[11]),
    .DI(N0),
    .S(\Mcount_t1_cy<12>_rt_95 ),
    .O(Mcount_t1_cy[12])
  );
  XORCY   \Mcount_t1_xor<12>  (
    .CI(Mcount_t1_cy[11]),
    .LI(\Mcount_t1_cy<12>_rt_95 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_t1_cy<13>  (
    .CI(Mcount_t1_cy[12]),
    .DI(N0),
    .S(\Mcount_t1_cy<13>_rt_97 ),
    .O(Mcount_t1_cy[13])
  );
  XORCY   \Mcount_t1_xor<13>  (
    .CI(Mcount_t1_cy[12]),
    .LI(\Mcount_t1_cy<13>_rt_97 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_t1_cy<14>  (
    .CI(Mcount_t1_cy[13]),
    .DI(N0),
    .S(\Mcount_t1_cy<14>_rt_99 ),
    .O(Mcount_t1_cy[14])
  );
  XORCY   \Mcount_t1_xor<14>  (
    .CI(Mcount_t1_cy[13]),
    .LI(\Mcount_t1_cy<14>_rt_99 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_t1_cy<15>  (
    .CI(Mcount_t1_cy[14]),
    .DI(N0),
    .S(\Mcount_t1_cy<15>_rt_101 ),
    .O(Mcount_t1_cy[15])
  );
  XORCY   \Mcount_t1_xor<15>  (
    .CI(Mcount_t1_cy[14]),
    .LI(\Mcount_t1_cy<15>_rt_101 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_t1_cy<16>  (
    .CI(Mcount_t1_cy[15]),
    .DI(N0),
    .S(\Mcount_t1_cy<16>_rt_103 ),
    .O(Mcount_t1_cy[16])
  );
  XORCY   \Mcount_t1_xor<16>  (
    .CI(Mcount_t1_cy[15]),
    .LI(\Mcount_t1_cy<16>_rt_103 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_t1_cy<17>  (
    .CI(Mcount_t1_cy[16]),
    .DI(N0),
    .S(\Mcount_t1_cy<17>_rt_105 ),
    .O(Mcount_t1_cy[17])
  );
  XORCY   \Mcount_t1_xor<17>  (
    .CI(Mcount_t1_cy[16]),
    .LI(\Mcount_t1_cy<17>_rt_105 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_t1_cy<18>  (
    .CI(Mcount_t1_cy[17]),
    .DI(N0),
    .S(\Mcount_t1_cy<18>_rt_107 ),
    .O(Mcount_t1_cy[18])
  );
  XORCY   \Mcount_t1_xor<18>  (
    .CI(Mcount_t1_cy[17]),
    .LI(\Mcount_t1_cy<18>_rt_107 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_t1_cy<19>  (
    .CI(Mcount_t1_cy[18]),
    .DI(N0),
    .S(\Mcount_t1_cy<19>_rt_109 ),
    .O(Mcount_t1_cy[19])
  );
  XORCY   \Mcount_t1_xor<19>  (
    .CI(Mcount_t1_cy[18]),
    .LI(\Mcount_t1_cy<19>_rt_109 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_t1_cy<20>  (
    .CI(Mcount_t1_cy[19]),
    .DI(N0),
    .S(\Mcount_t1_cy<20>_rt_113 ),
    .O(Mcount_t1_cy[20])
  );
  XORCY   \Mcount_t1_xor<20>  (
    .CI(Mcount_t1_cy[19]),
    .LI(\Mcount_t1_cy<20>_rt_113 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_t1_cy<21>  (
    .CI(Mcount_t1_cy[20]),
    .DI(N0),
    .S(\Mcount_t1_cy<21>_rt_115 ),
    .O(Mcount_t1_cy[21])
  );
  XORCY   \Mcount_t1_xor<21>  (
    .CI(Mcount_t1_cy[20]),
    .LI(\Mcount_t1_cy<21>_rt_115 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_t1_cy<22>  (
    .CI(Mcount_t1_cy[21]),
    .DI(N0),
    .S(\Mcount_t1_cy<22>_rt_117 ),
    .O(Mcount_t1_cy[22])
  );
  XORCY   \Mcount_t1_xor<22>  (
    .CI(Mcount_t1_cy[21]),
    .LI(\Mcount_t1_cy<22>_rt_117 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_t1_cy<23>  (
    .CI(Mcount_t1_cy[22]),
    .DI(N0),
    .S(\Mcount_t1_cy<23>_rt_119 ),
    .O(Mcount_t1_cy[23])
  );
  XORCY   \Mcount_t1_xor<23>  (
    .CI(Mcount_t1_cy[22]),
    .LI(\Mcount_t1_cy<23>_rt_119 ),
    .O(Result[23])
  );
  XORCY   \Mcount_t1_xor<24>  (
    .CI(Mcount_t1_cy[23]),
    .LI(\Mcount_t1_xor<24>_rt_137 ),
    .O(Result[24])
  );
  MUXCY   \Mcount_t_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_t_lut[0]),
    .O(Mcount_t_cy[0])
  );
  XORCY   \Mcount_t_xor<0>  (
    .CI(N0),
    .LI(Mcount_t_lut[0]),
    .O(\Result<0>2 )
  );
  MUXCY   \Mcount_t_cy<1>  (
    .CI(Mcount_t_cy[0]),
    .DI(N0),
    .S(\Mcount_t_cy<1>_rt_160 ),
    .O(Mcount_t_cy[1])
  );
  XORCY   \Mcount_t_xor<1>  (
    .CI(Mcount_t_cy[0]),
    .LI(\Mcount_t_cy<1>_rt_160 ),
    .O(\Result<1>2 )
  );
  MUXCY   \Mcount_t_cy<2>  (
    .CI(Mcount_t_cy[1]),
    .DI(N0),
    .S(\Mcount_t_cy<2>_rt_170 ),
    .O(Mcount_t_cy[2])
  );
  XORCY   \Mcount_t_xor<2>  (
    .CI(Mcount_t_cy[1]),
    .LI(\Mcount_t_cy<2>_rt_170 ),
    .O(\Result<2>2 )
  );
  MUXCY   \Mcount_t_cy<3>  (
    .CI(Mcount_t_cy[2]),
    .DI(N0),
    .S(\Mcount_t_cy<3>_rt_172 ),
    .O(Mcount_t_cy[3])
  );
  XORCY   \Mcount_t_xor<3>  (
    .CI(Mcount_t_cy[2]),
    .LI(\Mcount_t_cy<3>_rt_172 ),
    .O(\Result<3>2 )
  );
  MUXCY   \Mcount_t_cy<4>  (
    .CI(Mcount_t_cy[3]),
    .DI(N0),
    .S(\Mcount_t_cy<4>_rt_174 ),
    .O(Mcount_t_cy[4])
  );
  XORCY   \Mcount_t_xor<4>  (
    .CI(Mcount_t_cy[3]),
    .LI(\Mcount_t_cy<4>_rt_174 ),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_t_cy<5>  (
    .CI(Mcount_t_cy[4]),
    .DI(N0),
    .S(\Mcount_t_cy<5>_rt_176 ),
    .O(Mcount_t_cy[5])
  );
  XORCY   \Mcount_t_xor<5>  (
    .CI(Mcount_t_cy[4]),
    .LI(\Mcount_t_cy<5>_rt_176 ),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_t_cy<6>  (
    .CI(Mcount_t_cy[5]),
    .DI(N0),
    .S(\Mcount_t_cy<6>_rt_178 ),
    .O(Mcount_t_cy[6])
  );
  XORCY   \Mcount_t_xor<6>  (
    .CI(Mcount_t_cy[5]),
    .LI(\Mcount_t_cy<6>_rt_178 ),
    .O(\Result<6>1 )
  );
  MUXCY   \Mcount_t_cy<7>  (
    .CI(Mcount_t_cy[6]),
    .DI(N0),
    .S(\Mcount_t_cy<7>_rt_180 ),
    .O(Mcount_t_cy[7])
  );
  XORCY   \Mcount_t_xor<7>  (
    .CI(Mcount_t_cy[6]),
    .LI(\Mcount_t_cy<7>_rt_180 ),
    .O(\Result<7>1 )
  );
  MUXCY   \Mcount_t_cy<8>  (
    .CI(Mcount_t_cy[7]),
    .DI(N0),
    .S(\Mcount_t_cy<8>_rt_182 ),
    .O(Mcount_t_cy[8])
  );
  XORCY   \Mcount_t_xor<8>  (
    .CI(Mcount_t_cy[7]),
    .LI(\Mcount_t_cy<8>_rt_182 ),
    .O(\Result<8>1 )
  );
  MUXCY   \Mcount_t_cy<9>  (
    .CI(Mcount_t_cy[8]),
    .DI(N0),
    .S(\Mcount_t_cy<9>_rt_184 ),
    .O(Mcount_t_cy[9])
  );
  XORCY   \Mcount_t_xor<9>  (
    .CI(Mcount_t_cy[8]),
    .LI(\Mcount_t_cy<9>_rt_184 ),
    .O(\Result<9>1 )
  );
  MUXCY   \Mcount_t_cy<10>  (
    .CI(Mcount_t_cy[9]),
    .DI(N0),
    .S(\Mcount_t_cy<10>_rt_140 ),
    .O(Mcount_t_cy[10])
  );
  XORCY   \Mcount_t_xor<10>  (
    .CI(Mcount_t_cy[9]),
    .LI(\Mcount_t_cy<10>_rt_140 ),
    .O(\Result<10>1 )
  );
  MUXCY   \Mcount_t_cy<11>  (
    .CI(Mcount_t_cy[10]),
    .DI(N0),
    .S(\Mcount_t_cy<11>_rt_142 ),
    .O(Mcount_t_cy[11])
  );
  XORCY   \Mcount_t_xor<11>  (
    .CI(Mcount_t_cy[10]),
    .LI(\Mcount_t_cy<11>_rt_142 ),
    .O(\Result<11>1 )
  );
  MUXCY   \Mcount_t_cy<12>  (
    .CI(Mcount_t_cy[11]),
    .DI(N0),
    .S(\Mcount_t_cy<12>_rt_144 ),
    .O(Mcount_t_cy[12])
  );
  XORCY   \Mcount_t_xor<12>  (
    .CI(Mcount_t_cy[11]),
    .LI(\Mcount_t_cy<12>_rt_144 ),
    .O(\Result<12>1 )
  );
  MUXCY   \Mcount_t_cy<13>  (
    .CI(Mcount_t_cy[12]),
    .DI(N0),
    .S(\Mcount_t_cy<13>_rt_146 ),
    .O(Mcount_t_cy[13])
  );
  XORCY   \Mcount_t_xor<13>  (
    .CI(Mcount_t_cy[12]),
    .LI(\Mcount_t_cy<13>_rt_146 ),
    .O(\Result<13>1 )
  );
  MUXCY   \Mcount_t_cy<14>  (
    .CI(Mcount_t_cy[13]),
    .DI(N0),
    .S(\Mcount_t_cy<14>_rt_148 ),
    .O(Mcount_t_cy[14])
  );
  XORCY   \Mcount_t_xor<14>  (
    .CI(Mcount_t_cy[13]),
    .LI(\Mcount_t_cy<14>_rt_148 ),
    .O(\Result<14>1 )
  );
  MUXCY   \Mcount_t_cy<15>  (
    .CI(Mcount_t_cy[14]),
    .DI(N0),
    .S(\Mcount_t_cy<15>_rt_150 ),
    .O(Mcount_t_cy[15])
  );
  XORCY   \Mcount_t_xor<15>  (
    .CI(Mcount_t_cy[14]),
    .LI(\Mcount_t_cy<15>_rt_150 ),
    .O(\Result<15>1 )
  );
  MUXCY   \Mcount_t_cy<16>  (
    .CI(Mcount_t_cy[15]),
    .DI(N0),
    .S(\Mcount_t_cy<16>_rt_152 ),
    .O(Mcount_t_cy[16])
  );
  XORCY   \Mcount_t_xor<16>  (
    .CI(Mcount_t_cy[15]),
    .LI(\Mcount_t_cy<16>_rt_152 ),
    .O(\Result<16>1 )
  );
  MUXCY   \Mcount_t_cy<17>  (
    .CI(Mcount_t_cy[16]),
    .DI(N0),
    .S(\Mcount_t_cy<17>_rt_154 ),
    .O(Mcount_t_cy[17])
  );
  XORCY   \Mcount_t_xor<17>  (
    .CI(Mcount_t_cy[16]),
    .LI(\Mcount_t_cy<17>_rt_154 ),
    .O(\Result<17>1 )
  );
  MUXCY   \Mcount_t_cy<18>  (
    .CI(Mcount_t_cy[17]),
    .DI(N0),
    .S(\Mcount_t_cy<18>_rt_156 ),
    .O(Mcount_t_cy[18])
  );
  XORCY   \Mcount_t_xor<18>  (
    .CI(Mcount_t_cy[17]),
    .LI(\Mcount_t_cy<18>_rt_156 ),
    .O(\Result<18>1 )
  );
  MUXCY   \Mcount_t_cy<19>  (
    .CI(Mcount_t_cy[18]),
    .DI(N0),
    .S(\Mcount_t_cy<19>_rt_158 ),
    .O(Mcount_t_cy[19])
  );
  XORCY   \Mcount_t_xor<19>  (
    .CI(Mcount_t_cy[18]),
    .LI(\Mcount_t_cy<19>_rt_158 ),
    .O(\Result<19>1 )
  );
  MUXCY   \Mcount_t_cy<20>  (
    .CI(Mcount_t_cy[19]),
    .DI(N0),
    .S(\Mcount_t_cy<20>_rt_162 ),
    .O(Mcount_t_cy[20])
  );
  XORCY   \Mcount_t_xor<20>  (
    .CI(Mcount_t_cy[19]),
    .LI(\Mcount_t_cy<20>_rt_162 ),
    .O(\Result<20>1 )
  );
  MUXCY   \Mcount_t_cy<21>  (
    .CI(Mcount_t_cy[20]),
    .DI(N0),
    .S(\Mcount_t_cy<21>_rt_164 ),
    .O(Mcount_t_cy[21])
  );
  XORCY   \Mcount_t_xor<21>  (
    .CI(Mcount_t_cy[20]),
    .LI(\Mcount_t_cy<21>_rt_164 ),
    .O(\Result<21>1 )
  );
  MUXCY   \Mcount_t_cy<22>  (
    .CI(Mcount_t_cy[21]),
    .DI(N0),
    .S(\Mcount_t_cy<22>_rt_166 ),
    .O(Mcount_t_cy[22])
  );
  XORCY   \Mcount_t_xor<22>  (
    .CI(Mcount_t_cy[21]),
    .LI(\Mcount_t_cy<22>_rt_166 ),
    .O(\Result<22>1 )
  );
  MUXCY   \Mcount_t_cy<23>  (
    .CI(Mcount_t_cy[22]),
    .DI(N0),
    .S(\Mcount_t_cy<23>_rt_168 ),
    .O(Mcount_t_cy[23])
  );
  XORCY   \Mcount_t_xor<23>  (
    .CI(Mcount_t_cy[22]),
    .LI(\Mcount_t_cy<23>_rt_168 ),
    .O(\Result<23>1 )
  );
  XORCY   \Mcount_t_xor<24>  (
    .CI(Mcount_t_cy[23]),
    .LI(\Mcount_t_xor<24>_rt_186 ),
    .O(\Result<24>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  m_and00001 (
    .I0(water_IBUF1),
    .I1(p_OBUF_290),
    .O(m_and0000)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  C_cmp_le00001 (
    .I0(m_3_286),
    .I1(m_1_284),
    .I2(m_2_285),
    .O(C_cmp_le0000)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  m_not00011 (
    .I0(p_OBUF_290),
    .I1(water_IBUF1),
    .O(m_not0001)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \lev_l_mux0000<4>1  (
    .I0(lev_h_0_260),
    .I1(lev_l_0_269),
    .O(lev_l_mux0000[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_tss_xor<1>11  (
    .I0(tss_1_350),
    .I1(tss_0_349),
    .O(\Result<1>3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_m_xor<1>11  (
    .I0(m_1_284),
    .I1(m_0_283),
    .O(\Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_m_xor<2>11  (
    .I0(m_2_285),
    .I1(m_1_284),
    .I2(m_0_283),
    .O(\Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \A_mux0000<3>1  (
    .I0(tss_2_351),
    .I1(tss_0_349),
    .I2(tss_1_350),
    .I3(A_0_4),
    .O(A_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \A_mux0000<2>1  (
    .I0(tss_2_351),
    .I1(tss_0_349),
    .I2(tss_1_350),
    .I3(A_1_5),
    .O(A_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \A_mux0000<1>1  (
    .I0(tss_2_351),
    .I1(tss_1_350),
    .I2(tss_0_349),
    .I3(A_2_6),
    .O(A_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \A_mux0000<0>1  (
    .I0(tss_2_351),
    .I1(tss_0_349),
    .I2(tss_1_350),
    .I3(A_3_7),
    .O(A_mux0000[0])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Mcount_m_xor<3>11  (
    .I0(m_0_283),
    .I1(m_3_286),
    .I2(m_1_284),
    .I3(m_2_285),
    .O(\Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \lev_l_mux0000<3>_SW0  (
    .I0(lev_l_4_273),
    .I1(lev_l_3_272),
    .I2(lev_l_2_271),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hFF64 ))
  \lev_l_mux0000<3>  (
    .I0(lev_l_0_269),
    .I1(lev_l_1_270),
    .I2(N24),
    .I3(lev_h_0_260),
    .O(lev_l_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C_mux0000<1>48  (
    .I0(C_5_24),
    .I1(tss_2_351),
    .I2(N22),
    .I3(\C_mux0000<1>30 ),
    .O(\C_mux0000[1] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C_mux0000<4>0  (
    .I0(C_2_21),
    .I1(tss_2_351),
    .O(\C_mux0000<4>0_42 )
  );
  LUT4 #(
    .INIT ( 16'h232A ))
  \C_mux0000<4>32  (
    .I0(lev_l_0_269),
    .I1(lev_l_3_272),
    .I2(lev_l_1_270),
    .I3(lev_l_2_271),
    .O(\C_mux0000<4>32_43 )
  );
  LUT4 #(
    .INIT ( 16'h1131 ))
  \C_mux0000<4>78  (
    .I0(tss_1_350),
    .I1(tss_2_351),
    .I2(\C_mux0000<4>59_44 ),
    .I3(tss_0_349),
    .O(\C_mux0000<4>78_45 )
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \Result<2>31  (
    .I0(tss_1_350),
    .I1(tss_0_349),
    .I2(tss_2_351),
    .O(\Result<2>3 )
  );
  LUT3 #(
    .INIT ( 8'h06 ))
  \lev_l_mux0000<1>1  (
    .I0(lev_l_3_272),
    .I1(Madd_lev_l_addsub0000_cy[2]),
    .I2(lev_h_not0001_263),
    .O(lev_l_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h006C ))
  \lev_l_mux0000<2>1  (
    .I0(lev_l_1_270),
    .I1(lev_l_2_271),
    .I2(lev_l_0_269),
    .I3(lev_h_not0001_263),
    .O(lev_l_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'h006A ))
  \lev_l_mux0000<0>1  (
    .I0(lev_l_4_273),
    .I1(lev_l_3_272),
    .I2(N30),
    .I3(lev_h_not0001_263),
    .O(lev_l_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  lev_h_not0001_SW0 (
    .I0(lev_l_4_273),
    .I1(lev_l_1_270),
    .I2(lev_l_3_272),
    .O(N26)
  );
  LUT4 #(
    .INIT ( 16'hBAAA ))
  lev_h_not0001 (
    .I0(lev_h_0_260),
    .I1(lev_l_2_271),
    .I2(lev_l_0_269),
    .I3(N26),
    .O(lev_h_not0001_263)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C_mux0000<0>0  (
    .I0(C_6_25),
    .I1(tss_2_351),
    .O(\C_mux0000<0>0_27 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \C_mux0000<0>11  (
    .I0(lev_l_0_269),
    .I1(lev_l_2_271),
    .O(\C_mux0000<0>11_28 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C_mux0000<5>0  (
    .I0(C_1_20),
    .I1(tss_2_351),
    .O(\C_mux0000<5>0_47 )
  );
  LUT3 #(
    .INIT ( 8'hB2 ))
  \C_mux0000<5>27  (
    .I0(lev_l_1_270),
    .I1(lev_l_2_271),
    .I2(lev_l_0_269),
    .O(\C_mux0000<5>27_49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C_mux0000<3>0  (
    .I0(C_3_22),
    .I1(tss_2_351),
    .O(\C_mux0000<3>0_39 )
  );
  LUT4 #(
    .INIT ( 16'h0092 ))
  \C_mux0000<3>45  (
    .I0(lev_l_0_269),
    .I1(lev_l_1_270),
    .I2(lev_l_2_271),
    .I3(lev_l_3_272),
    .O(\C_mux0000<3>45_40 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C_mux0000<3>92  (
    .I0(tss_1_350),
    .I1(N22),
    .I2(\C_mux0000<3>45_40 ),
    .I3(N32),
    .O(\C_mux0000<3>92_41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  tss_and00001 (
    .I0(\Result<2>3 ),
    .I1(tss_cmp_ge0000),
    .O(tss_and0000)
  );
  IBUF   water_IBUF (
    .I(water),
    .O(water_IBUF1)
  );
  OBUF   p_OBUF (
    .I(p_OBUF_290),
    .O(p)
  );
  OBUF   A_3_OBUF (
    .I(A_3_7),
    .O(A[3])
  );
  OBUF   A_2_OBUF (
    .I(A_2_6),
    .O(A[2])
  );
  OBUF   A_1_OBUF (
    .I(A_1_5),
    .O(A[1])
  );
  OBUF   A_0_OBUF (
    .I(A_0_4),
    .O(A[0])
  );
  OBUF   C_6_OBUF (
    .I(C_6_25),
    .O(C[6])
  );
  OBUF   C_5_OBUF (
    .I(C_5_24),
    .O(C[5])
  );
  OBUF   C_4_OBUF (
    .I(C_4_23),
    .O(C[4])
  );
  OBUF   C_3_OBUF (
    .I(C_3_22),
    .O(C[3])
  );
  OBUF   C_2_OBUF (
    .I(C_2_21),
    .O(C[2])
  );
  OBUF   C_1_OBUF (
    .I(C_1_20),
    .O(C[1])
  );
  OBUF   C_0_OBUF (
    .I(C_0_19),
    .O(C[0])
  );
  OBUF   m_3_OBUF (
    .I(m_3_286),
    .O(m[3])
  );
  OBUF   m_2_OBUF (
    .I(m_2_285),
    .O(m[2])
  );
  OBUF   m_1_OBUF (
    .I(m_1_284),
    .O(m[1])
  );
  OBUF   m_0_OBUF (
    .I(m_0_283),
    .O(m[0])
  );
  OBUF   tss_2_OBUF (
    .I(tss_2_351),
    .O(tss[2])
  );
  OBUF   tss_1_OBUF (
    .I(tss_1_350),
    .O(tss[1])
  );
  OBUF   tss_0_OBUF (
    .I(tss_0_349),
    .O(tss[0])
  );
  OBUF   lev_h_4_OBUF (
    .I(N0),
    .O(lev_h[4])
  );
  OBUF   lev_h_3_OBUF (
    .I(N0),
    .O(lev_h[3])
  );
  OBUF   lev_h_2_OBUF (
    .I(N0),
    .O(lev_h[2])
  );
  OBUF   lev_h_1_OBUF (
    .I(N0),
    .O(lev_h[1])
  );
  OBUF   lev_h_0_OBUF (
    .I(lev_h_0_260),
    .O(lev_h[0])
  );
  OBUF   lev_l_4_OBUF (
    .I(lev_l_4_273),
    .O(lev_l[4])
  );
  OBUF   lev_l_3_OBUF (
    .I(lev_l_3_272),
    .O(lev_l[3])
  );
  OBUF   lev_l_2_OBUF (
    .I(lev_l_2_271),
    .O(lev_l[2])
  );
  OBUF   lev_l_1_OBUF (
    .I(lev_l_1_270),
    .O(lev_l[1])
  );
  OBUF   lev_l_0_OBUF (
    .I(lev_l_0_269),
    .O(lev_l[0])
  );
  FDS   C_1 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000<5>97 ),
    .S(\C_mux0000<5>0_47 ),
    .Q(C_1_20)
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \C_mux0000<5>971  (
    .I0(\C_mux0000<5>51_50 ),
    .I1(tss_2_351),
    .I2(\C_mux0000<5>12_48 ),
    .O(\C_mux0000<5>97 )
  );
  FDS   C_2 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000<4>83 ),
    .S(\C_mux0000<4>0_42 ),
    .Q(C_2_21)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C_mux0000<4>831  (
    .I0(N31),
    .I1(\C_mux0000<4>32_43 ),
    .I2(\C_mux0000<4>78_45 ),
    .O(\C_mux0000<4>83 )
  );
  FDS   C_3 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000<3>92_41 ),
    .S(\C_mux0000<3>0_39 ),
    .Q(C_3_22)
  );
  FDS   C_6 (
    .C(clk_BUFGP_254),
    .D(\C_mux0000<0>92 ),
    .S(\C_mux0000<0>0_27 ),
    .Q(C_6_25)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C_mux0000<0>921  (
    .I0(tss_1_350),
    .I1(\C_mux0000<0>54_30 ),
    .I2(\C_mux0000<0>33_29 ),
    .O(\C_mux0000<0>92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_t_cmp_ge0000_cy<0>_rt  (
    .I0(t[1]),
    .O(\Mcompar_t_cmp_ge0000_cy<0>_rt_56 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_t_cmp_ge0000_cy<2>_rt  (
    .I0(t[3]),
    .O(\Mcompar_t_cmp_ge0000_cy<2>_rt_59 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_tss_cmp_ge0000_cy<0>_rt  (
    .I0(t1[0]),
    .O(\Mcompar_tss_cmp_ge0000_cy<0>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_tss_cmp_ge0000_cy<2>_rt  (
    .I0(t1[2]),
    .O(\Mcompar_tss_cmp_ge0000_cy<2>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<1>_rt  (
    .I0(t1[1]),
    .O(\Mcount_t1_cy<1>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<2>_rt  (
    .I0(t1[2]),
    .O(\Mcount_t1_cy<2>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<3>_rt  (
    .I0(t1[3]),
    .O(\Mcount_t1_cy<3>_rt_123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<4>_rt  (
    .I0(t1[4]),
    .O(\Mcount_t1_cy<4>_rt_125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<5>_rt  (
    .I0(t1[5]),
    .O(\Mcount_t1_cy<5>_rt_127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<6>_rt  (
    .I0(t1[6]),
    .O(\Mcount_t1_cy<6>_rt_129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<7>_rt  (
    .I0(t1[7]),
    .O(\Mcount_t1_cy<7>_rt_131 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<8>_rt  (
    .I0(t1[8]),
    .O(\Mcount_t1_cy<8>_rt_133 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<9>_rt  (
    .I0(t1[9]),
    .O(\Mcount_t1_cy<9>_rt_135 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<10>_rt  (
    .I0(t1[10]),
    .O(\Mcount_t1_cy<10>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<11>_rt  (
    .I0(t1[11]),
    .O(\Mcount_t1_cy<11>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<12>_rt  (
    .I0(t1[12]),
    .O(\Mcount_t1_cy<12>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<13>_rt  (
    .I0(t1[13]),
    .O(\Mcount_t1_cy<13>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<14>_rt  (
    .I0(t1[14]),
    .O(\Mcount_t1_cy<14>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<15>_rt  (
    .I0(t1[15]),
    .O(\Mcount_t1_cy<15>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<16>_rt  (
    .I0(t1[16]),
    .O(\Mcount_t1_cy<16>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<17>_rt  (
    .I0(t1[17]),
    .O(\Mcount_t1_cy<17>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<18>_rt  (
    .I0(t1[18]),
    .O(\Mcount_t1_cy<18>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<19>_rt  (
    .I0(t1[19]),
    .O(\Mcount_t1_cy<19>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<20>_rt  (
    .I0(t1[20]),
    .O(\Mcount_t1_cy<20>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<21>_rt  (
    .I0(t1[21]),
    .O(\Mcount_t1_cy<21>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<22>_rt  (
    .I0(t1[22]),
    .O(\Mcount_t1_cy<22>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_cy<23>_rt  (
    .I0(t1[23]),
    .O(\Mcount_t1_cy<23>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<1>_rt  (
    .I0(t[1]),
    .O(\Mcount_t_cy<1>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<2>_rt  (
    .I0(t[2]),
    .O(\Mcount_t_cy<2>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<3>_rt  (
    .I0(t[3]),
    .O(\Mcount_t_cy<3>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<4>_rt  (
    .I0(t[4]),
    .O(\Mcount_t_cy<4>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<5>_rt  (
    .I0(t[5]),
    .O(\Mcount_t_cy<5>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<6>_rt  (
    .I0(t[6]),
    .O(\Mcount_t_cy<6>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<7>_rt  (
    .I0(t[7]),
    .O(\Mcount_t_cy<7>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<8>_rt  (
    .I0(t[8]),
    .O(\Mcount_t_cy<8>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<9>_rt  (
    .I0(t[9]),
    .O(\Mcount_t_cy<9>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<10>_rt  (
    .I0(t[10]),
    .O(\Mcount_t_cy<10>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<11>_rt  (
    .I0(t[11]),
    .O(\Mcount_t_cy<11>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<12>_rt  (
    .I0(t[12]),
    .O(\Mcount_t_cy<12>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<13>_rt  (
    .I0(t[13]),
    .O(\Mcount_t_cy<13>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<14>_rt  (
    .I0(t[14]),
    .O(\Mcount_t_cy<14>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<15>_rt  (
    .I0(t[15]),
    .O(\Mcount_t_cy<15>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<16>_rt  (
    .I0(t[16]),
    .O(\Mcount_t_cy<16>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<17>_rt  (
    .I0(t[17]),
    .O(\Mcount_t_cy<17>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<18>_rt  (
    .I0(t[18]),
    .O(\Mcount_t_cy<18>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<19>_rt  (
    .I0(t[19]),
    .O(\Mcount_t_cy<19>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<20>_rt  (
    .I0(t[20]),
    .O(\Mcount_t_cy<20>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<21>_rt  (
    .I0(t[21]),
    .O(\Mcount_t_cy<21>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<22>_rt  (
    .I0(t[22]),
    .O(\Mcount_t_cy<22>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_cy<23>_rt  (
    .I0(t[23]),
    .O(\Mcount_t_cy<23>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t1_xor<24>_rt  (
    .I0(t1[24]),
    .O(\Mcount_t1_xor<24>_rt_137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_t_xor<24>_rt  (
    .I0(t[24]),
    .O(\Mcount_t_xor<24>_rt_186 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \C_mux0000<5>51  (
    .I0(\C_mux0000<5>27_49 ),
    .I1(lev_l_4_273),
    .I2(lev_l_3_272),
    .I3(tss_0_349),
    .O(\C_mux0000<5>51_50 )
  );
  LUT4 #(
    .INIT ( 16'hEE91 ))
  \C_mux0000<6>54_SW0  (
    .I0(lev_l_1_270),
    .I1(lev_l_2_271),
    .I2(lev_l_0_269),
    .I3(lev_l_3_272),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \C_mux0000<6>83  (
    .I0(tss_2_351),
    .I1(\C_mux0000<6>54_53 ),
    .I2(tss_1_350),
    .I3(C_0_19),
    .O(\C_mux0000[6] )
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \C_mux0000<2>58  (
    .I0(tss_2_351),
    .I1(\C_mux0000<2>32_38 ),
    .I2(tss_1_350),
    .I3(C_4_23),
    .O(\C_mux0000[2] )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \C_mux0000<4>59  (
    .I0(m_1_284),
    .I1(m_2_285),
    .I2(lev_h_0_260),
    .I3(m_3_286),
    .O(\C_mux0000<4>59_44 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_254)
  );
  BUFG   water_IBUF_BUFG (
    .I(water_IBUF1),
    .O(water_IBUF_355)
  );
  BUFGP   power_BUFGP (
    .I(power),
    .O(power_BUFGP_292)
  );
  INV   \Mcompar_t_cmp_ge0000_lut<1>_INV_0  (
    .I(t[2]),
    .O(\Mcompar_t_cmp_ge0000_lut[1] )
  );
  INV   \Mcompar_t_cmp_ge0000_lut<8>_INV_0  (
    .I(t[24]),
    .O(\Mcompar_t_cmp_ge0000_lut[8] )
  );
  INV   \Mcompar_tss_cmp_ge0000_lut<1>_INV_0  (
    .I(t1[1]),
    .O(\Mcompar_tss_cmp_ge0000_lut[1] )
  );
  INV   \Mcount_t1_lut<0>_INV_0  (
    .I(t1[0]),
    .O(Mcount_t1_lut[0])
  );
  INV   \Mcount_t_lut<0>_INV_0  (
    .I(t[0]),
    .O(Mcount_t_lut[0])
  );
  INV   ts_not00011_INV_0 (
    .I(ts_344),
    .O(ts_not0001)
  );
  INV   \lev_h_mux0000<4>1_INV_0  (
    .I(lev_h_0_260),
    .O(lev_h_mux0000[4])
  );
  INV   lev_h_Acst_inv1_INV_0 (
    .I(p_OBUF_290),
    .O(lev_h_Acst_inv)
  );
  INV   \Mcount_tss_xor<0>11_INV_0  (
    .I(tss_0_349),
    .O(\Result<0>3 )
  );
  INV   \Mcount_m_xor<0>11_INV_0  (
    .I(m_0_283),
    .O(\Result<0>1 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \C_mux0000<2>171  (
    .I0(lev_l_1_270),
    .I1(lev_l_2_271),
    .I2(lev_l_3_272),
    .I3(lev_l_0_269),
    .O(\C_mux0000<2>171_37 )
  );
  MUXF5   \C_mux0000<2>17_f5  (
    .I0(\C_mux0000<2>171_37 ),
    .I1(N0),
    .S(lev_l_4_273),
    .O(\C_mux0000<2>17 )
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \C_mux0000<1>301  (
    .I0(lev_l_2_271),
    .I1(lev_l_0_269),
    .I2(lev_l_1_270),
    .I3(lev_l_3_272),
    .O(\C_mux0000<1>301_34 )
  );
  MUXF5   \C_mux0000<1>30_f5  (
    .I0(N0),
    .I1(\C_mux0000<1>301_34 ),
    .S(tss_1_350),
    .O(\C_mux0000<1>30 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \Madd_lev_l_addsub0000_cy<2>11  (
    .I0(lev_l_2_271),
    .I1(lev_l_1_270),
    .I2(lev_l_0_269),
    .LO(N30),
    .O(Madd_lev_l_addsub0000_cy[2])
  );
  LUT3_L #(
    .INIT ( 8'hC4 ))
  \C_mux0000<2>32  (
    .I0(C_cmp_le0000),
    .I1(tss_0_349),
    .I2(\C_mux0000<2>17 ),
    .LO(\C_mux0000<2>32_38 )
  );
  LUT4_D #(
    .INIT ( 16'h0040 ))
  \C_mux0000<4>27  (
    .I0(lev_l_4_273),
    .I1(C_cmp_le0000),
    .I2(tss_0_349),
    .I3(tss_2_351),
    .LO(N31),
    .O(N22)
  );
  LUT4_D #(
    .INIT ( 16'h0301 ))
  \C_mux0000<0>54  (
    .I0(C_cmp_le0000),
    .I1(tss_2_351),
    .I2(tss_0_349),
    .I3(lev_h_0_260),
    .LO(N32),
    .O(\C_mux0000<0>54_30 )
  );
  LUT4_L #(
    .INIT ( 16'h5DFF ))
  \C_mux0000<5>12  (
    .I0(tss_1_350),
    .I1(lev_h_0_260),
    .I2(tss_0_349),
    .I3(C_cmp_le0000),
    .LO(\C_mux0000<5>12_48 )
  );
  LUT4_L #(
    .INIT ( 16'h0200 ))
  \C_mux0000<0>33  (
    .I0(\C_mux0000<0>11_28 ),
    .I1(lev_l_3_272),
    .I2(lev_l_1_270),
    .I3(N22),
    .LO(\C_mux0000<0>33_29 )
  );
  LUT4_L #(
    .INIT ( 16'hAF8F ))
  \C_mux0000<6>54  (
    .I0(C_cmp_le0000),
    .I1(lev_l_4_273),
    .I2(tss_0_349),
    .I3(N28),
    .LO(\C_mux0000<6>54_53 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

