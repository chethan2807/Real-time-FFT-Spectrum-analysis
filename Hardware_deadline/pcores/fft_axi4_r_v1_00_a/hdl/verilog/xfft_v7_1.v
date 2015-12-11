////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: xfft_v7_1.v
// /___/   /\     Timestamp: Wed Sep 23 21:18:54 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/STUDIES/NTU_PROJECTS/EMBEDDED_SYSTEM_DESIGN/FFT_HARDWARE_PROJ/FFT_ISE/FFT/ipcore_dir/tmp/_cg/xfft_v7_1.ngc D:/STUDIES/NTU_PROJECTS/EMBEDDED_SYSTEM_DESIGN/FFT_HARDWARE_PROJ/FFT_ISE/FFT/ipcore_dir/tmp/_cg/xfft_v7_1.v 
// Device	: 7z020clg484-1
// Input file	: D:/STUDIES/NTU_PROJECTS/EMBEDDED_SYSTEM_DESIGN/FFT_HARDWARE_PROJ/FFT_ISE/FFT/ipcore_dir/tmp/_cg/xfft_v7_1.ngc
// Output file	: D:/STUDIES/NTU_PROJECTS/EMBEDDED_SYSTEM_DESIGN/FFT_HARDWARE_PROJ/FFT_ISE/FFT/ipcore_dir/tmp/_cg/xfft_v7_1.v
// # of Modules	: 1
// Design Name	: xfft_v7_1
// Xilinx        : C:\Xilinx\14.4\ISE_DS\ISE\
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

module xfft_v7_1 (
  clk, start, unload, fwd_inv, fwd_inv_we, rfd, busy, edone, done, dv, xn_re, xn_im, xn_index, xk_index, xk_re, xk_im
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input start;
  input unload;
  input fwd_inv;
  input fwd_inv_we;
  output rfd;
  output busy;
  output edone;
  output done;
  output dv;
  input [15 : 0] xn_re;
  input [15 : 0] xn_im;
  output [6 : 0] xn_index;
  output [6 : 0] xk_index;
  output [23 : 0] xk_re;
  output [23 : 0] xk_im;
  
  // synthesis translate_off
  
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ;
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire sig0000027f;
  wire sig00000280;
  wire sig00000281;
  wire sig00000282;
  wire sig00000283;
  wire sig00000284;
  wire sig00000285;
  wire sig00000286;
  wire sig00000287;
  wire sig00000288;
  wire sig00000289;
  wire sig0000028a;
  wire sig0000028b;
  wire sig0000028c;
  wire sig0000028d;
  wire sig0000028e;
  wire sig0000028f;
  wire sig00000290;
  wire sig00000291;
  wire sig00000292;
  wire sig00000293;
  wire sig00000294;
  wire sig00000295;
  wire sig00000296;
  wire sig00000297;
  wire sig00000298;
  wire sig00000299;
  wire sig0000029a;
  wire sig0000029b;
  wire sig0000029c;
  wire sig0000029d;
  wire sig0000029e;
  wire sig0000029f;
  wire sig000002a0;
  wire sig000002a1;
  wire sig000002a2;
  wire sig000002a3;
  wire sig000002a4;
  wire sig000002a5;
  wire sig000002a6;
  wire sig000002a7;
  wire sig000002a8;
  wire sig000002a9;
  wire sig000002aa;
  wire sig000002ab;
  wire sig000002ac;
  wire sig000002ad;
  wire sig000002ae;
  wire sig000002af;
  wire sig000002b0;
  wire sig000002b1;
  wire sig000002b2;
  wire sig000002b3;
  wire sig000002b4;
  wire sig000002b5;
  wire sig000002b6;
  wire sig000002b7;
  wire sig000002b8;
  wire sig000002b9;
  wire sig000002ba;
  wire sig000002bb;
  wire sig000002bc;
  wire sig000002bd;
  wire sig000002be;
  wire sig000002bf;
  wire sig000002c0;
  wire sig000002c1;
  wire sig000002c2;
  wire sig000002c3;
  wire sig000002c4;
  wire sig000002c5;
  wire sig000002c6;
  wire sig000002c7;
  wire sig000002c8;
  wire sig000002c9;
  wire sig000002ca;
  wire sig000002cb;
  wire sig000002cc;
  wire sig000002cd;
  wire sig000002ce;
  wire sig000002cf;
  wire sig000002d0;
  wire sig000002d1;
  wire sig000002d2;
  wire sig000002d3;
  wire sig000002d4;
  wire sig000002d5;
  wire sig000002d6;
  wire sig000002d7;
  wire sig000002d8;
  wire sig000002d9;
  wire sig000002da;
  wire sig000002db;
  wire sig000002dc;
  wire sig000002dd;
  wire sig000002de;
  wire sig000002df;
  wire sig000002e0;
  wire sig000002e1;
  wire sig000002e2;
  wire sig000002e3;
  wire sig000002e4;
  wire sig000002e5;
  wire sig000002e6;
  wire sig000002e7;
  wire sig000002e8;
  wire sig000002e9;
  wire sig000002ea;
  wire sig000002eb;
  wire sig000002ec;
  wire sig000002ed;
  wire sig000002ee;
  wire sig000002ef;
  wire sig000002f0;
  wire sig000002f1;
  wire sig000002f2;
  wire sig000002f3;
  wire sig000002f4;
  wire sig000002f5;
  wire sig000002f6;
  wire sig000002f7;
  wire sig000002f8;
  wire sig000002f9;
  wire sig000002fa;
  wire sig000002fb;
  wire sig000002fc;
  wire sig000002fd;
  wire sig000002fe;
  wire sig000002ff;
  wire sig00000300;
  wire sig00000301;
  wire sig00000302;
  wire sig00000303;
  wire sig00000304;
  wire sig00000305;
  wire sig00000306;
  wire sig00000307;
  wire sig00000308;
  wire sig00000309;
  wire sig0000030a;
  wire sig0000030b;
  wire sig0000030c;
  wire sig0000030d;
  wire sig0000030e;
  wire sig0000030f;
  wire sig00000310;
  wire sig00000311;
  wire sig00000312;
  wire sig00000313;
  wire sig00000314;
  wire sig00000315;
  wire sig00000316;
  wire sig00000317;
  wire sig00000318;
  wire sig00000319;
  wire sig0000031a;
  wire sig0000031b;
  wire sig0000031c;
  wire sig0000031d;
  wire sig0000031e;
  wire sig0000031f;
  wire sig00000320;
  wire sig00000321;
  wire sig00000322;
  wire sig00000323;
  wire sig00000324;
  wire sig00000325;
  wire sig00000326;
  wire sig00000327;
  wire sig00000328;
  wire sig00000329;
  wire sig0000032a;
  wire sig0000032b;
  wire sig0000032c;
  wire sig0000032d;
  wire sig0000032e;
  wire sig0000032f;
  wire sig00000330;
  wire sig00000331;
  wire sig00000332;
  wire sig00000333;
  wire sig00000334;
  wire sig00000335;
  wire sig00000336;
  wire sig00000337;
  wire sig00000338;
  wire sig00000339;
  wire sig0000033a;
  wire sig0000033b;
  wire sig0000033c;
  wire sig0000033d;
  wire sig0000033e;
  wire sig0000033f;
  wire sig00000340;
  wire sig00000341;
  wire sig00000342;
  wire sig00000343;
  wire sig00000344;
  wire sig00000345;
  wire sig00000346;
  wire sig00000347;
  wire sig00000348;
  wire sig00000349;
  wire sig0000034a;
  wire sig0000034b;
  wire sig0000034c;
  wire sig0000034d;
  wire sig0000034e;
  wire sig0000034f;
  wire sig00000350;
  wire sig00000351;
  wire sig00000352;
  wire sig00000353;
  wire sig00000354;
  wire sig00000355;
  wire sig00000356;
  wire sig00000357;
  wire sig00000358;
  wire sig00000359;
  wire sig0000035a;
  wire sig0000035b;
  wire sig0000035c;
  wire sig0000035d;
  wire sig0000035e;
  wire sig0000035f;
  wire sig00000360;
  wire sig00000361;
  wire sig00000362;
  wire sig00000363;
  wire sig00000364;
  wire sig00000365;
  wire sig00000366;
  wire sig00000367;
  wire sig00000368;
  wire sig00000369;
  wire sig0000036a;
  wire sig0000036b;
  wire sig0000036c;
  wire sig0000036d;
  wire sig0000036e;
  wire sig0000036f;
  wire sig00000370;
  wire sig00000371;
  wire sig00000372;
  wire sig00000373;
  wire sig00000374;
  wire sig00000375;
  wire sig00000376;
  wire sig00000377;
  wire sig00000378;
  wire sig00000379;
  wire sig0000037a;
  wire sig0000037b;
  wire sig0000037c;
  wire sig0000037d;
  wire sig0000037e;
  wire sig0000037f;
  wire sig00000380;
  wire sig00000381;
  wire sig00000382;
  wire sig00000383;
  wire sig00000384;
  wire sig00000385;
  wire sig00000386;
  wire sig00000387;
  wire sig00000388;
  wire sig00000389;
  wire sig0000038a;
  wire sig0000038b;
  wire sig0000038c;
  wire sig0000038d;
  wire sig0000038e;
  wire sig0000038f;
  wire sig00000390;
  wire sig00000391;
  wire sig00000392;
  wire sig00000393;
  wire sig00000394;
  wire sig00000395;
  wire sig00000396;
  wire sig00000397;
  wire sig00000398;
  wire sig00000399;
  wire sig0000039a;
  wire sig0000039b;
  wire sig0000039c;
  wire sig0000039d;
  wire sig0000039e;
  wire sig0000039f;
  wire sig000003a0;
  wire sig000003a1;
  wire sig000003a2;
  wire sig000003a3;
  wire sig000003a4;
  wire sig000003a5;
  wire sig000003a6;
  wire sig000003a7;
  wire sig000003a8;
  wire sig000003a9;
  wire sig000003aa;
  wire sig000003ab;
  wire sig000003ac;
  wire sig000003ad;
  wire sig000003ae;
  wire sig000003af;
  wire sig000003b0;
  wire sig000003b1;
  wire sig000003b2;
  wire sig000003b3;
  wire sig000003b4;
  wire sig000003b5;
  wire sig000003b6;
  wire sig000003b7;
  wire sig000003b8;
  wire sig000003b9;
  wire sig000003ba;
  wire sig000003bb;
  wire sig000003bc;
  wire sig000003bd;
  wire sig000003be;
  wire sig000003bf;
  wire sig000003c0;
  wire sig000003c1;
  wire sig000003c2;
  wire sig000003c3;
  wire sig000003c4;
  wire sig000003c5;
  wire sig000003c6;
  wire sig000003c7;
  wire sig000003c8;
  wire sig000003c9;
  wire sig000003ca;
  wire sig000003cb;
  wire sig000003cc;
  wire sig000003cd;
  wire sig000003ce;
  wire sig000003cf;
  wire sig000003d0;
  wire sig000003d1;
  wire sig000003d2;
  wire sig000003d3;
  wire sig000003d4;
  wire sig000003d5;
  wire sig000003d6;
  wire sig000003d7;
  wire sig000003d8;
  wire sig000003d9;
  wire sig000003da;
  wire sig000003db;
  wire sig000003dc;
  wire sig000003dd;
  wire sig000003de;
  wire sig000003df;
  wire sig000003e0;
  wire sig000003e1;
  wire sig000003e2;
  wire sig000003e3;
  wire sig000003e4;
  wire sig000003e5;
  wire sig000003e6;
  wire sig000003e7;
  wire sig000003e8;
  wire sig000003e9;
  wire sig000003ea;
  wire sig000003eb;
  wire sig000003ec;
  wire sig000003ed;
  wire sig000003ee;
  wire sig000003ef;
  wire sig000003f0;
  wire sig000003f1;
  wire sig000003f2;
  wire sig000003f3;
  wire sig000003f4;
  wire sig000003f5;
  wire sig000003f6;
  wire sig000003f7;
  wire sig000003f8;
  wire sig000003f9;
  wire sig000003fa;
  wire sig000003fb;
  wire sig000003fc;
  wire sig000003fd;
  wire sig000003fe;
  wire sig000003ff;
  wire sig00000400;
  wire sig00000401;
  wire sig00000402;
  wire sig00000403;
  wire sig00000404;
  wire sig00000405;
  wire sig00000406;
  wire sig00000407;
  wire sig00000408;
  wire sig00000409;
  wire sig0000040a;
  wire sig0000040b;
  wire sig0000040c;
  wire sig0000040d;
  wire sig0000040e;
  wire sig0000040f;
  wire sig00000410;
  wire sig00000411;
  wire sig00000412;
  wire sig00000413;
  wire sig00000414;
  wire sig00000415;
  wire sig00000416;
  wire sig00000417;
  wire sig00000418;
  wire sig00000419;
  wire sig0000041a;
  wire sig0000041b;
  wire sig0000041c;
  wire sig0000041d;
  wire sig0000041e;
  wire sig0000041f;
  wire sig00000420;
  wire sig00000421;
  wire sig00000422;
  wire sig00000423;
  wire sig00000424;
  wire sig00000425;
  wire sig00000426;
  wire sig00000427;
  wire sig00000428;
  wire sig00000429;
  wire sig0000042a;
  wire sig0000042b;
  wire sig0000042c;
  wire sig0000042d;
  wire sig0000042e;
  wire sig0000042f;
  wire sig00000430;
  wire sig00000431;
  wire sig00000432;
  wire sig00000433;
  wire sig00000434;
  wire sig00000435;
  wire sig00000436;
  wire sig00000437;
  wire sig00000438;
  wire sig00000439;
  wire sig0000043a;
  wire sig0000043b;
  wire sig0000043c;
  wire sig0000043d;
  wire sig0000043e;
  wire sig0000043f;
  wire sig00000440;
  wire sig00000441;
  wire sig00000442;
  wire sig00000443;
  wire sig00000444;
  wire sig00000445;
  wire sig00000446;
  wire sig00000447;
  wire sig00000448;
  wire sig00000449;
  wire sig0000044a;
  wire sig0000044b;
  wire sig0000044c;
  wire sig0000044d;
  wire sig0000044e;
  wire sig0000044f;
  wire sig00000450;
  wire sig00000451;
  wire sig00000452;
  wire sig00000453;
  wire sig00000454;
  wire sig00000455;
  wire sig00000456;
  wire sig00000457;
  wire sig00000458;
  wire sig00000459;
  wire sig0000045a;
  wire sig0000045b;
  wire sig0000045c;
  wire sig0000045d;
  wire sig0000045e;
  wire sig0000045f;
  wire sig00000460;
  wire sig00000461;
  wire sig00000462;
  wire sig00000463;
  wire sig00000464;
  wire sig00000465;
  wire sig00000466;
  wire sig00000467;
  wire sig00000468;
  wire sig00000469;
  wire sig0000046a;
  wire sig0000046b;
  wire sig0000046c;
  wire sig0000046d;
  wire sig0000046e;
  wire sig0000046f;
  wire sig00000470;
  wire sig00000471;
  wire sig00000472;
  wire sig00000473;
  wire sig00000474;
  wire sig00000475;
  wire sig00000476;
  wire sig00000477;
  wire sig00000478;
  wire sig00000479;
  wire sig0000047a;
  wire sig0000047b;
  wire sig0000047c;
  wire sig0000047d;
  wire sig0000047e;
  wire sig0000047f;
  wire sig00000480;
  wire sig00000481;
  wire sig00000482;
  wire sig00000483;
  wire sig00000484;
  wire sig00000485;
  wire sig00000486;
  wire sig00000487;
  wire sig00000488;
  wire sig00000489;
  wire sig0000048a;
  wire sig0000048b;
  wire sig0000048c;
  wire sig0000048d;
  wire sig0000048e;
  wire sig0000048f;
  wire sig00000490;
  wire sig00000491;
  wire sig00000492;
  wire sig00000493;
  wire sig00000494;
  wire sig00000495;
  wire sig00000496;
  wire sig00000497;
  wire sig00000498;
  wire sig00000499;
  wire sig0000049a;
  wire sig0000049b;
  wire sig0000049c;
  wire sig0000049d;
  wire sig0000049e;
  wire sig0000049f;
  wire sig000004a0;
  wire sig000004a1;
  wire sig000004a2;
  wire sig000004a3;
  wire sig000004a4;
  wire sig000004a5;
  wire sig000004a6;
  wire sig000004a7;
  wire sig000004a8;
  wire sig000004a9;
  wire sig000004aa;
  wire sig000004ab;
  wire sig000004ac;
  wire sig000004ad;
  wire sig000004ae;
  wire sig000004af;
  wire sig000004b0;
  wire sig000004b1;
  wire sig000004b2;
  wire sig000004b3;
  wire sig000004b4;
  wire sig000004b5;
  wire sig000004b6;
  wire sig000004b7;
  wire sig000004b8;
  wire sig000004b9;
  wire sig000004ba;
  wire sig000004bb;
  wire sig000004bc;
  wire sig000004bd;
  wire sig000004be;
  wire sig000004bf;
  wire sig000004c0;
  wire sig000004c1;
  wire sig000004c2;
  wire sig000004c3;
  wire sig000004c4;
  wire sig000004c5;
  wire sig000004c6;
  wire sig000004c7;
  wire sig000004c8;
  wire sig000004c9;
  wire sig000004ca;
  wire sig000004cb;
  wire sig000004cc;
  wire sig000004cd;
  wire sig000004ce;
  wire sig000004cf;
  wire sig000004d0;
  wire sig000004d1;
  wire sig000004d2;
  wire sig000004d3;
  wire sig000004d4;
  wire sig000004d5;
  wire sig000004d6;
  wire sig000004d7;
  wire sig000004d8;
  wire sig000004d9;
  wire sig000004da;
  wire sig000004db;
  wire sig000004dc;
  wire sig000004dd;
  wire sig000004de;
  wire sig000004df;
  wire sig000004e0;
  wire sig000004e1;
  wire sig000004e2;
  wire sig000004e3;
  wire sig000004e4;
  wire sig000004e5;
  wire sig000004e6;
  wire sig000004e7;
  wire sig000004e8;
  wire sig000004e9;
  wire sig000004ea;
  wire sig000004eb;
  wire sig000004ec;
  wire sig000004ed;
  wire sig000004ee;
  wire sig000004ef;
  wire sig000004f0;
  wire sig000004f1;
  wire sig000004f2;
  wire sig000004f3;
  wire sig000004f4;
  wire sig000004f5;
  wire sig000004f6;
  wire sig000004f7;
  wire sig000004f8;
  wire sig000004f9;
  wire sig000004fa;
  wire sig000004fb;
  wire sig000004fc;
  wire sig000004fd;
  wire sig000004fe;
  wire sig000004ff;
  wire sig00000500;
  wire sig00000501;
  wire sig00000502;
  wire sig00000503;
  wire sig00000504;
  wire sig00000505;
  wire sig00000506;
  wire sig00000507;
  wire sig00000508;
  wire sig00000509;
  wire sig0000050a;
  wire sig0000050b;
  wire sig0000050c;
  wire sig0000050d;
  wire sig0000050e;
  wire sig0000050f;
  wire sig00000510;
  wire sig00000511;
  wire sig00000512;
  wire sig00000513;
  wire sig00000514;
  wire sig00000515;
  wire sig00000516;
  wire sig00000517;
  wire sig00000518;
  wire sig00000519;
  wire sig0000051a;
  wire sig0000051b;
  wire sig0000051c;
  wire sig0000051d;
  wire sig0000051e;
  wire sig0000051f;
  wire sig00000520;
  wire sig00000521;
  wire sig00000522;
  wire sig00000523;
  wire sig00000524;
  wire sig00000525;
  wire sig00000526;
  wire sig00000527;
  wire sig00000528;
  wire sig00000529;
  wire sig0000052a;
  wire sig0000052b;
  wire sig0000052c;
  wire sig0000052d;
  wire sig0000052e;
  wire sig0000052f;
  wire sig00000530;
  wire sig00000531;
  wire sig00000532;
  wire sig00000533;
  wire sig00000534;
  wire sig00000535;
  wire sig00000536;
  wire sig00000537;
  wire sig00000538;
  wire sig00000539;
  wire sig0000053a;
  wire sig0000053b;
  wire sig0000053c;
  wire sig0000053d;
  wire sig0000053e;
  wire sig0000053f;
  wire sig00000540;
  wire sig00000541;
  wire sig00000542;
  wire sig00000543;
  wire sig00000544;
  wire sig00000545;
  wire sig00000546;
  wire sig00000547;
  wire sig00000548;
  wire sig00000549;
  wire sig0000054a;
  wire sig0000054b;
  wire sig0000054c;
  wire sig0000054d;
  wire sig0000054e;
  wire sig0000054f;
  wire sig00000550;
  wire sig00000551;
  wire sig00000552;
  wire sig00000553;
  wire sig00000554;
  wire sig00000555;
  wire sig00000556;
  wire sig00000557;
  wire sig00000558;
  wire sig00000559;
  wire sig0000055a;
  wire sig0000055b;
  wire \blk0000020c/sig000005fd ;
  wire \blk0000020c/sig000005fc ;
  wire \blk0000020c/sig000005cb ;
  wire \blk0000020c/sig000005ca ;
  wire \blk0000020c/sig000005c9 ;
  wire \blk0000020c/sig000005c8 ;
  wire \blk0000020c/sig000005c7 ;
  wire \blk0000020c/sig000005c6 ;
  wire \blk0000020c/sig000005c5 ;
  wire \blk0000020c/sig000005c4 ;
  wire \blk0000020c/sig000005c3 ;
  wire \blk0000020c/sig000005c2 ;
  wire \blk0000020c/sig000005c1 ;
  wire \blk0000020c/sig000005c0 ;
  wire \blk0000020c/sig000005bf ;
  wire \blk0000020c/sig000005be ;
  wire \blk0000020c/sig000005bd ;
  wire \blk0000020c/sig000005bc ;
  wire \blk0000020c/sig000005bb ;
  wire \blk0000020c/sig000005ba ;
  wire \blk0000020c/sig000005b9 ;
  wire \blk0000020c/sig000005b8 ;
  wire \blk0000020c/sig000005b7 ;
  wire \blk0000020c/sig000005b6 ;
  wire \blk0000020c/sig000005b5 ;
  wire \blk0000020c/sig000005b4 ;
  wire \blk0000020c/sig000005b3 ;
  wire \blk0000020c/sig000005b2 ;
  wire \blk0000020c/sig000005b1 ;
  wire \blk0000020c/sig000005b0 ;
  wire \blk0000020c/sig000005af ;
  wire \blk0000020c/sig000005ae ;
  wire \blk0000020c/sig000005ad ;
  wire \blk0000020c/sig000005ac ;
  wire \blk0000020c/sig000005ab ;
  wire \blk0000020c/sig000005aa ;
  wire \blk0000020c/sig000005a9 ;
  wire \blk0000020c/sig000005a8 ;
  wire \blk0000020c/sig000005a7 ;
  wire \blk0000020c/sig000005a6 ;
  wire \blk0000020c/sig000005a5 ;
  wire \blk0000020c/sig000005a4 ;
  wire \blk0000020c/sig000005a3 ;
  wire \blk0000020c/sig000005a2 ;
  wire \blk0000020c/sig000005a1 ;
  wire \blk0000020c/sig000005a0 ;
  wire \blk0000020c/sig0000059f ;
  wire \blk0000020c/sig0000059e ;
  wire \blk0000020c/sig0000059d ;
  wire \blk0000020c/sig0000059c ;
  wire \blk000002a1/blk000002a2/sig00000609 ;
  wire \blk000002a1/blk000002a2/sig00000608 ;
  wire \blk000002a1/blk000002a2/sig00000607 ;
  wire \blk00000307/blk00000308/sig00000612 ;
  wire \blk00000307/blk00000308/sig00000611 ;
  wire \blk00000307/blk00000308/sig00000610 ;
  wire \blk0000038b/blk0000038c/sig0000061e ;
  wire \blk0000038b/blk0000038c/sig0000061d ;
  wire \blk0000038b/blk0000038c/sig0000061c ;
  wire \blk000003b7/sig0000063a ;
  wire \blk000003b7/sig00000639 ;
  wire \blk000003b7/sig00000638 ;
  wire \blk000003b7/sig00000637 ;
  wire \blk000003b7/sig00000636 ;
  wire \blk000003b7/sig00000635 ;
  wire \blk000003b7/sig00000634 ;
  wire \blk000003b7/sig00000633 ;
  wire \blk000003b7/sig00000632 ;
  wire \blk000003b7/sig00000631 ;
  wire \blk000003b7/sig00000630 ;
  wire \blk000003b7/sig0000062f ;
  wire \blk000003b7/sig0000062e ;
  wire \blk000003b7/sig0000062d ;
  wire \blk000003f7/blk000003f8/sig00000643 ;
  wire \blk000003f7/blk000003f8/sig00000642 ;
  wire \blk000003f7/blk000003f8/sig00000641 ;
  wire \blk000003fd/sig00000653 ;
  wire \blk000003fd/sig00000652 ;
  wire \blk000003fd/sig00000651 ;
  wire \blk000003fd/sig00000650 ;
  wire \blk000003fd/sig0000064f ;
  wire \blk000003fd/sig0000064e ;
  wire \blk000003fd/sig0000064d ;
  wire \blk000003fd/sig0000064c ;
  wire \blk0000040a/blk0000040b/sig0000065f ;
  wire \blk0000040a/blk0000040b/sig0000065e ;
  wire \blk0000040a/blk0000040b/sig0000065d ;
  wire \blk00000410/blk00000411/sig0000066b ;
  wire \blk00000410/blk00000411/sig0000066a ;
  wire \blk00000410/blk00000411/sig00000669 ;
  wire \blk00000416/blk00000417/sig00000677 ;
  wire \blk00000416/blk00000417/sig00000676 ;
  wire \blk00000416/blk00000417/sig00000675 ;
  wire \blk0000041c/blk0000041d/sig00000683 ;
  wire \blk0000041c/blk0000041d/sig00000682 ;
  wire \blk0000041c/blk0000041d/sig00000681 ;
  wire \blk00000439/sig000006a8 ;
  wire \blk00000439/sig000006a7 ;
  wire \blk00000439/sig000006a6 ;
  wire \blk00000439/sig000006a5 ;
  wire \blk00000439/sig000006a4 ;
  wire \blk00000439/sig000006a3 ;
  wire \blk00000439/sig000006a2 ;
  wire \blk00000439/sig000006a1 ;
  wire \blk00000439/sig000006a0 ;
  wire \blk00000439/sig0000069f ;
  wire \blk00000439/sig0000069e ;
  wire \blk00000439/sig0000069d ;
  wire \blk00000439/sig0000069c ;
  wire \blk00000439/sig0000069b ;
  wire \blk00000439/sig0000069a ;
  wire \blk00000439/sig00000699 ;
  wire \blk00000439/sig00000698 ;
  wire \blk00000439/sig00000697 ;
  wire \blk00000439/sig00000696 ;
  wire \blk00000439/sig00000695 ;
  wire \blk00000439/sig00000694 ;
  wire \NLW_blk0000051a_DIBDI<15>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<14>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<13>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<12>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<11>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<10>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<9>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<8>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<7>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<6>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<5>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<4>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<3>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<2>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<1>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIBDI<0>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_blk0000051a_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_blk0000051a_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk0000051a_DOPBDOP<1>_UNCONNECTED ;
  wire NLW_blk0000051b_Q15_UNCONNECTED;
  wire NLW_blk0000051d_Q15_UNCONNECTED;
  wire NLW_blk0000051f_Q15_UNCONNECTED;
  wire NLW_blk00000521_Q15_UNCONNECTED;
  wire NLW_blk00000523_Q15_UNCONNECTED;
  wire NLW_blk00000525_Q15_UNCONNECTED;
  wire NLW_blk00000527_Q15_UNCONNECTED;
  wire NLW_blk00000529_Q15_UNCONNECTED;
  wire NLW_blk0000052b_Q15_UNCONNECTED;
  wire NLW_blk0000052d_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk0000052d_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk0000052d_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk0000052d_UNDERFLOW_UNCONNECTED;
  wire NLW_blk0000052d_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk0000052d_OVERFLOW_UNCONNECTED;
  wire \NLW_blk0000052d_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052d_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052d_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052d_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052d_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052d_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052d_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<47>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<46>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<45>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<44>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<43>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<42>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<41>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<40>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<39>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<38>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<37>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<36>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<35>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<34>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<33>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<32>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<31>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<30>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<29>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<28>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<27>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<2>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<1>_UNCONNECTED ;
  wire \NLW_blk0000052d_P<0>_UNCONNECTED ;
  wire NLW_blk0000052e_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk0000052e_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk0000052e_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk0000052e_UNDERFLOW_UNCONNECTED;
  wire NLW_blk0000052e_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk0000052e_OVERFLOW_UNCONNECTED;
  wire \NLW_blk0000052e_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052e_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052e_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052e_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052e_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052e_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052e_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<47>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<46>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<45>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<44>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<43>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<42>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<41>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<40>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<39>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<38>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<37>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<36>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<35>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<34>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<33>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<32>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<31>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<30>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<29>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<28>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<27>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<2>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<1>_UNCONNECTED ;
  wire \NLW_blk0000052e_P<0>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052e_PCOUT<0>_UNCONNECTED ;
  wire NLW_blk0000052f_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk0000052f_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk0000052f_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk0000052f_UNDERFLOW_UNCONNECTED;
  wire NLW_blk0000052f_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk0000052f_OVERFLOW_UNCONNECTED;
  wire \NLW_blk0000052f_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052f_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052f_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052f_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052f_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052f_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000052f_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<47>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<46>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<45>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<44>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<43>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<42>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<41>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<40>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<39>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<38>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<37>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<36>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<35>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<34>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<33>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<32>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<31>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<30>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<29>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<28>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<27>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<26>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<25>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<24>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<23>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<22>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<21>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<20>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<19>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<18>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<17>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<16>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<15>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<14>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<13>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<12>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<11>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<10>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<9>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<8>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<7>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<6>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<5>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<4>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<3>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<2>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<1>_UNCONNECTED ;
  wire \NLW_blk0000052f_P<0>_UNCONNECTED ;
  wire \NLW_blk00000530_P<41>_UNCONNECTED ;
  wire \NLW_blk00000530_P<40>_UNCONNECTED ;
  wire \NLW_blk00000530_P<11>_UNCONNECTED ;
  wire \NLW_blk00000530_P<10>_UNCONNECTED ;
  wire \NLW_blk00000530_P<9>_UNCONNECTED ;
  wire \NLW_blk00000530_P<8>_UNCONNECTED ;
  wire \NLW_blk00000530_P<7>_UNCONNECTED ;
  wire \NLW_blk00000530_P<6>_UNCONNECTED ;
  wire \NLW_blk00000530_P<5>_UNCONNECTED ;
  wire \NLW_blk00000530_P<4>_UNCONNECTED ;
  wire \NLW_blk00000530_P<3>_UNCONNECTED ;
  wire \NLW_blk00000530_P<2>_UNCONNECTED ;
  wire \NLW_blk00000530_P<1>_UNCONNECTED ;
  wire \NLW_blk00000530_P<0>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000530_PCOUT<0>_UNCONNECTED ;
  wire NLW_blk00000530_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk00000530_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk00000530_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk00000530_UNDERFLOW_UNCONNECTED;
  wire NLW_blk00000530_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk00000530_OVERFLOW_UNCONNECTED;
  wire \NLW_blk00000530_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000530_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000530_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000530_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000530_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000530_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000530_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000530_P<47>_UNCONNECTED ;
  wire \NLW_blk00000530_P<46>_UNCONNECTED ;
  wire \NLW_blk00000530_P<45>_UNCONNECTED ;
  wire \NLW_blk00000530_P<44>_UNCONNECTED ;
  wire \NLW_blk00000530_P<43>_UNCONNECTED ;
  wire \NLW_blk00000530_P<42>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DOP<3>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DOP<2>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DOP<1>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<31>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<30>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<29>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<28>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<27>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<26>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<25>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<24>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<23>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<22>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<21>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<20>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<19>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<18>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<17>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<16>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<15>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<14>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<13>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<12>_UNCONNECTED ;
  wire \NLW_blk0000020c/blk00000240_DO<11>_UNCONNECTED ;
  wire \NLW_blk000002a1/blk000002a2/blk000002a5_Q15_UNCONNECTED ;
  wire \NLW_blk00000307/blk00000308/blk0000030b_Q15_UNCONNECTED ;
  wire \NLW_blk0000038b/blk0000038c/blk0000038f_Q15_UNCONNECTED ;
  wire \NLW_blk000003f7/blk000003f8/blk000003fb_Q15_UNCONNECTED ;
  wire \NLW_blk0000040a/blk0000040b/blk0000040e_Q15_UNCONNECTED ;
  wire \NLW_blk00000410/blk00000411/blk00000414_Q15_UNCONNECTED ;
  wire \NLW_blk00000416/blk00000417/blk0000041a_Q15_UNCONNECTED ;
  wire \NLW_blk0000041c/blk0000041d/blk00000420_Q15_UNCONNECTED ;
  wire [6 : 0] NlwRenamedSig_OI_xn_index;
  wire [6 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i ;
  wire [23 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q ;
  wire [23 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q ;
  assign
    xn_index[6] = NlwRenamedSig_OI_xn_index[6],
    xn_index[5] = NlwRenamedSig_OI_xn_index[5],
    xn_index[4] = NlwRenamedSig_OI_xn_index[4],
    xn_index[3] = NlwRenamedSig_OI_xn_index[3],
    xn_index[2] = NlwRenamedSig_OI_xn_index[2],
    xn_index[1] = NlwRenamedSig_OI_xn_index[1],
    xn_index[0] = NlwRenamedSig_OI_xn_index[0],
    xk_index[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6],
    xk_index[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5],
    xk_index[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4],
    xk_index[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3],
    xk_index[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2],
    xk_index[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1],
    xk_index[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0],
    xk_re[23] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [23],
    xk_re[22] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [22],
    xk_re[21] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [21],
    xk_re[20] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [20],
    xk_re[19] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [19],
    xk_re[18] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [18],
    xk_re[17] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [17],
    xk_re[16] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [16],
    xk_re[15] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [15],
    xk_re[14] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [14],
    xk_re[13] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [13],
    xk_re[12] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [12],
    xk_re[11] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [11],
    xk_re[10] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [10],
    xk_re[9] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [9],
    xk_re[8] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [8],
    xk_re[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [7],
    xk_re[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [6],
    xk_re[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [5],
    xk_re[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [4],
    xk_re[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [3],
    xk_re[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [2],
    xk_re[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [1],
    xk_re[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [0],
    xk_im[23] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [23],
    xk_im[22] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [22],
    xk_im[21] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [21],
    xk_im[20] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [20],
    xk_im[19] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [19],
    xk_im[18] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [18],
    xk_im[17] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [17],
    xk_im[16] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [16],
    xk_im[15] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [15],
    xk_im[14] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [14],
    xk_im[13] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [13],
    xk_im[12] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [12],
    xk_im[11] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [11],
    xk_im[10] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [10],
    xk_im[9] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [9],
    xk_im[8] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [8],
    xk_im[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [7],
    xk_im[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [6],
    xk_im[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [5],
    xk_im[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [4],
    xk_im[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [3],
    xk_im[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [2],
    xk_im[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [1],
    xk_im[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [0],
    rfd = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ,
    busy = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ,
    edone = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ,
    done = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ,
    dv = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .D(sig0000006c),
    .R(sig00000002),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001c2),
    .Q(sig000000cf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001c1),
    .Q(sig000000ce)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001c0),
    .Q(sig000000cd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001bf),
    .Q(sig000000cc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001be),
    .Q(sig000000cb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001bd),
    .Q(sig000000ca)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001bc),
    .Q(sig000000c9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001bb),
    .Q(sig000000c8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001ba),
    .Q(sig000000c7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b9),
    .Q(sig000000c6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b8),
    .Q(sig000000c5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b7),
    .Q(sig000000c4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b6),
    .Q(sig000000c3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b5),
    .Q(sig000000c2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b4),
    .Q(sig000000c1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b3),
    .Q(sig000000c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b2),
    .Q(sig000000bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b1),
    .Q(sig000000be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001b0),
    .Q(sig000000bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001af),
    .Q(sig000000bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001ae),
    .Q(sig000000bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001ad),
    .Q(sig000000ba)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001ac),
    .Q(sig000000b9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001ab),
    .Q(sig000000b8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .D(sig000001f2),
    .Q(sig00000130)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .D(sig000001f1),
    .Q(sig0000012f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .D(sig000001f0),
    .Q(sig0000012e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(clk),
    .D(sig000001ef),
    .Q(sig0000012d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .D(sig000001ee),
    .Q(sig0000012c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000021 (
    .C(clk),
    .D(sig000001ed),
    .Q(sig0000012b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .D(sig000001ec),
    .Q(sig0000012a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000023 (
    .C(clk),
    .D(sig000001eb),
    .Q(sig00000129)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .D(sig000001ea),
    .Q(sig00000128)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000025 (
    .C(clk),
    .D(sig000001e9),
    .Q(sig00000127)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .D(sig000001e8),
    .Q(sig00000126)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(clk),
    .D(sig000001e7),
    .Q(sig00000125)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .D(sig000001e6),
    .Q(sig00000124)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000029 (
    .C(clk),
    .D(sig000001e5),
    .Q(sig00000123)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .D(sig000001e4),
    .Q(sig00000122)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002b (
    .C(clk),
    .D(sig000001e3),
    .Q(sig00000121)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .D(sig000001e2),
    .Q(sig00000120)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002d (
    .C(clk),
    .D(sig000001e1),
    .Q(sig0000011f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .D(sig000001e0),
    .Q(sig0000011e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .D(sig000001df),
    .Q(sig0000011d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .D(sig000001de),
    .Q(sig0000011c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .D(sig000001dd),
    .Q(sig0000011b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .D(sig000001dc),
    .Q(sig0000011a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .D(sig000001db),
    .Q(sig00000119)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .D(sig000001da),
    .Q(sig00000118)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .D(sig000001d9),
    .Q(sig00000117)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .D(sig000001d8),
    .Q(sig00000116)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .D(sig000001d7),
    .Q(sig00000115)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .D(sig000001d6),
    .Q(sig00000114)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(clk),
    .D(sig000001d5),
    .Q(sig00000113)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .D(sig000001d4),
    .Q(sig00000112)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .D(sig000001d3),
    .Q(sig00000111)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .D(sig000001d2),
    .Q(sig00000110)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(clk),
    .D(sig000001d1),
    .Q(sig0000010f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .D(sig000001d0),
    .Q(sig0000010e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(clk),
    .D(sig000001cf),
    .Q(sig0000010d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(clk),
    .D(sig000001ce),
    .Q(sig0000010c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(clk),
    .D(sig000001cd),
    .Q(sig0000010b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(clk),
    .D(sig000001cc),
    .Q(sig0000010a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .D(sig000001cb),
    .Q(sig00000109)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .D(sig000001ca),
    .Q(sig00000108)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .D(sig000001c9),
    .Q(sig00000107)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .D(sig000001c8),
    .Q(sig00000106)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .D(sig000001c7),
    .Q(sig00000105)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .D(sig000001c6),
    .Q(sig00000104)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .D(sig000001c5),
    .Q(sig00000103)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .D(sig000001c4),
    .Q(sig00000102)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .D(sig000001c3),
    .Q(sig00000101)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .D(sig00000160),
    .Q(sig000000ff)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .D(sig0000015f),
    .Q(sig000000fe)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .D(sig0000015e),
    .Q(sig000000fd)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .D(sig0000015d),
    .Q(sig000000fc)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .D(sig0000015c),
    .Q(sig000000fb)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .D(sig0000015b),
    .Q(sig000000fa)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .D(sig0000015a),
    .Q(sig000000f9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .D(sig00000159),
    .Q(sig000000f8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .D(sig00000158),
    .Q(sig000000f7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .D(sig00000157),
    .Q(sig000000f6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .D(sig00000156),
    .Q(sig000000f5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .D(sig00000155),
    .Q(sig000000f4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .D(sig00000154),
    .Q(sig000000f3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .D(sig00000153),
    .Q(sig000000f2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(clk),
    .D(sig00000152),
    .Q(sig000000f1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .D(sig00000151),
    .Q(sig000000f0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(clk),
    .D(sig00000150),
    .Q(sig000000ef)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .D(sig0000014f),
    .Q(sig000000ee)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(clk),
    .D(sig0000014e),
    .Q(sig000000ed)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .D(sig0000014d),
    .Q(sig000000ec)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000060 (
    .C(clk),
    .D(sig0000014c),
    .Q(sig000000eb)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(clk),
    .D(sig0000014b),
    .Q(sig000000ea)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000062 (
    .C(clk),
    .D(sig0000014a),
    .Q(sig000000e9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(clk),
    .D(sig00000149),
    .Q(sig000000e8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000064 (
    .C(clk),
    .D(sig00000148),
    .Q(sig000000e7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000065 (
    .C(clk),
    .D(sig00000147),
    .Q(sig000000e6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000066 (
    .C(clk),
    .D(sig00000146),
    .Q(sig000000e5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(clk),
    .D(sig00000145),
    .Q(sig000000e4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000068 (
    .C(clk),
    .D(sig00000144),
    .Q(sig000000e3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(clk),
    .D(sig00000143),
    .Q(sig000000e2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000006a (
    .C(clk),
    .D(sig00000142),
    .Q(sig000000e1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000006b (
    .C(clk),
    .D(sig00000141),
    .Q(sig000000e0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000006c (
    .C(clk),
    .D(sig00000140),
    .Q(sig000000df)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000006d (
    .C(clk),
    .D(sig0000013f),
    .Q(sig000000de)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000006e (
    .C(clk),
    .D(sig0000013e),
    .Q(sig000000dd)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000006f (
    .C(clk),
    .D(sig0000013d),
    .Q(sig000000dc)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000070 (
    .C(clk),
    .D(sig0000013c),
    .Q(sig000000db)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000071 (
    .C(clk),
    .D(sig0000013b),
    .Q(sig000000da)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000072 (
    .C(clk),
    .D(sig0000013a),
    .Q(sig000000d9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(clk),
    .D(sig00000139),
    .Q(sig000000d8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000074 (
    .C(clk),
    .D(sig00000138),
    .Q(sig000000d7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(clk),
    .D(sig00000137),
    .Q(sig000000d6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000076 (
    .C(clk),
    .D(sig00000136),
    .Q(sig000000d5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(clk),
    .D(sig00000135),
    .Q(sig000000d4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000078 (
    .C(clk),
    .D(sig00000134),
    .Q(sig000000d3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000079 (
    .C(clk),
    .D(sig00000133),
    .Q(sig000000d2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007a (
    .C(clk),
    .D(sig00000132),
    .Q(sig000000d1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007b (
    .C(clk),
    .D(sig00000131),
    .Q(sig000000d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007c (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001aa),
    .Q(sig00000087)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007d (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a9),
    .Q(sig00000086)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007e (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a8),
    .Q(sig00000085)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007f (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a7),
    .Q(sig00000084)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000080 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a6),
    .Q(sig00000083)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000081 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a5),
    .Q(sig00000082)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000082 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a4),
    .Q(sig00000081)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000083 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a3),
    .Q(sig00000080)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000084 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a2),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000085 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a1),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000086 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001a0),
    .Q(sig0000007d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000087 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig0000019f),
    .Q(sig0000007c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000088 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig0000019e),
    .Q(sig0000007b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000089 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig0000019d),
    .Q(sig0000007a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008a (
    .C(clk),
    .CE(sig0000006d),
    .D(sig0000019c),
    .Q(sig00000079)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008b (
    .C(clk),
    .CE(sig0000006d),
    .D(sig0000019b),
    .Q(sig00000078)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008c (
    .C(clk),
    .CE(sig0000006d),
    .D(sig0000019a),
    .Q(sig00000077)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000199),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008e (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000198),
    .Q(sig00000075)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008f (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000197),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000090 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000196),
    .Q(sig00000073)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000091 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000195),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000092 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000194),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000093 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig00000193),
    .Q(sig00000070)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000094 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001aa),
    .Q(sig000000b7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000095 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a9),
    .Q(sig000000b6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000096 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a8),
    .Q(sig000000b5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000097 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a7),
    .Q(sig000000b4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000098 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a6),
    .Q(sig000000b3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000099 (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a5),
    .Q(sig000000b2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009a (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a4),
    .Q(sig000000b1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009b (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a3),
    .Q(sig000000b0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009c (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a2),
    .Q(sig000000af)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009d (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a1),
    .Q(sig000000ae)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009e (
    .C(clk),
    .CE(sig00000192),
    .D(sig000001a0),
    .Q(sig000000ad)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009f (
    .C(clk),
    .CE(sig00000192),
    .D(sig0000019f),
    .Q(sig000000ac)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a0 (
    .C(clk),
    .CE(sig00000192),
    .D(sig0000019e),
    .Q(sig000000ab)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a1 (
    .C(clk),
    .CE(sig00000192),
    .D(sig0000019d),
    .Q(sig000000aa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a2 (
    .C(clk),
    .CE(sig00000192),
    .D(sig0000019c),
    .Q(sig000000a9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a3 (
    .C(clk),
    .CE(sig00000192),
    .D(sig0000019b),
    .Q(sig000000a8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a4 (
    .C(clk),
    .CE(sig00000192),
    .D(sig0000019a),
    .Q(sig000000a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a5 (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000199),
    .Q(sig000000a6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a6 (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000198),
    .Q(sig000000a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a7 (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000197),
    .Q(sig000000a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a8 (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000196),
    .Q(sig000000a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a9 (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000195),
    .Q(sig000000a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000194),
    .Q(sig000000a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(clk),
    .CE(sig00000192),
    .D(sig00000193),
    .Q(sig000000a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001c2),
    .Q(sig0000009f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001c1),
    .Q(sig0000009e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001c0),
    .Q(sig0000009d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001bf),
    .Q(sig0000009c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001be),
    .Q(sig0000009b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001bd),
    .Q(sig0000009a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001bc),
    .Q(sig00000099)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b3 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001bb),
    .Q(sig00000098)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b4 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001ba),
    .Q(sig00000097)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b5 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b9),
    .Q(sig00000096)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b6 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b8),
    .Q(sig00000095)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b7 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b7),
    .Q(sig00000094)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b8 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b6),
    .Q(sig00000093)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b9 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b5),
    .Q(sig00000092)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ba (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b4),
    .Q(sig00000091)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bb (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b3),
    .Q(sig00000090)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bc (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b2),
    .Q(sig0000008f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bd (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b1),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000be (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001b0),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bf (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001af),
    .Q(sig0000008c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c0 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001ae),
    .Q(sig0000008b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c1 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001ad),
    .Q(sig0000008a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c2 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001ac),
    .Q(sig00000089)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c3 (
    .C(clk),
    .CE(sig0000006d),
    .D(sig000001ab),
    .Q(sig00000088)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c4 (
    .C(clk),
    .D(sig00000192),
    .Q(sig00000100)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c5 (
    .C(clk),
    .D(sig00000033),
    .Q(sig00000261)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c6 (
    .C(clk),
    .D(sig00000032),
    .Q(sig00000260)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c7 (
    .C(clk),
    .D(sig00000031),
    .Q(sig0000025f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c8 (
    .C(clk),
    .D(sig00000030),
    .Q(sig0000025e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c9 (
    .C(clk),
    .D(sig0000002f),
    .Q(sig0000025d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ca (
    .C(clk),
    .D(sig0000002e),
    .Q(sig0000025c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000cb (
    .C(clk),
    .D(sig0000002d),
    .Q(sig0000025b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000cc (
    .C(clk),
    .D(sig0000003a),
    .Q(sig00000268)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000cd (
    .C(clk),
    .D(sig00000039),
    .Q(sig00000267)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ce (
    .C(clk),
    .D(sig00000038),
    .Q(sig00000266)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000cf (
    .C(clk),
    .D(sig00000037),
    .Q(sig00000265)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000d0 (
    .C(clk),
    .D(sig00000036),
    .Q(sig00000264)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000d1 (
    .C(clk),
    .D(sig00000035),
    .Q(sig00000263)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000d2 (
    .C(clk),
    .D(sig00000034),
    .Q(sig00000262)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029d),
    .Q(sig0000026a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029b),
    .Q(sig0000029d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002fe),
    .Q(sig000002af)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002fd),
    .Q(sig000002ae)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002fc),
    .Q(sig000002ad)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002fb),
    .Q(sig000002ac)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002fa),
    .Q(sig000002ab)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000da (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f9),
    .Q(sig000002aa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000db (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f8),
    .Q(sig000002a9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000dc (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f7),
    .Q(sig000002a8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000dd (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f6),
    .Q(sig000002a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000de (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f5),
    .Q(sig000002a6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000df (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f4),
    .Q(sig000002a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f3),
    .Q(sig000002a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f2),
    .Q(sig000002a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f1),
    .Q(sig000002a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002f0),
    .Q(sig000002a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ef),
    .Q(sig000002a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ee),
    .Q(sig0000029f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ed),
    .Q(sig000002c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ec),
    .Q(sig000002bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002eb),
    .Q(sig000002be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ea),
    .Q(sig000002bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ea (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e9),
    .Q(sig000002bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000eb (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e8),
    .Q(sig000002bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ec (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e7),
    .Q(sig000002ba)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ed (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e6),
    .Q(sig000002b9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ee (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e5),
    .Q(sig000002b8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ef (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e4),
    .Q(sig000002b7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e3),
    .Q(sig000002b6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e2),
    .Q(sig000002b5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e1),
    .Q(sig000002b4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002e0),
    .Q(sig000002b3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002df),
    .Q(sig000002b2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002de),
    .Q(sig000002b1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002dd),
    .Q(sig000002b0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029c),
    .Q(sig0000029e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b7),
    .Q(sig00000316)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b6),
    .Q(sig00000315)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fa (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b5),
    .Q(sig00000314)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fb (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b4),
    .Q(sig00000313)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fc (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b3),
    .Q(sig00000312)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fd (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b2),
    .Q(sig00000311)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fe (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b1),
    .Q(sig00000310)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ff (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b0),
    .Q(sig0000030f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000100 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000af),
    .Q(sig0000030e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000101 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ae),
    .Q(sig0000030d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000102 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ad),
    .Q(sig0000030c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000103 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ac),
    .Q(sig0000030b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000104 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ab),
    .Q(sig0000030a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000105 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000aa),
    .Q(sig00000309)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000106 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a9),
    .Q(sig00000308)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000107 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a8),
    .Q(sig00000307)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000108 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a7),
    .Q(sig00000306)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000109 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a6),
    .Q(sig00000305)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a5),
    .Q(sig00000304)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a4),
    .Q(sig00000303)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a3),
    .Q(sig00000302)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010d (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a2),
    .Q(sig00000301)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010e (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a1),
    .Q(sig00000300)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010f (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000a0),
    .Q(sig000002ff)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000110 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000cf),
    .Q(sig0000032e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000111 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ce),
    .Q(sig0000032d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000112 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000cd),
    .Q(sig0000032c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000113 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000cc),
    .Q(sig0000032b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000114 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000cb),
    .Q(sig0000032a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000115 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ca),
    .Q(sig00000329)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000116 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c9),
    .Q(sig00000328)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000117 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c8),
    .Q(sig00000327)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000118 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c7),
    .Q(sig00000326)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000119 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c6),
    .Q(sig00000325)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c5),
    .Q(sig00000324)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c4),
    .Q(sig00000323)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c3),
    .Q(sig00000322)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011d (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c2),
    .Q(sig00000321)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011e (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c1),
    .Q(sig00000320)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011f (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000c0),
    .Q(sig0000031f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000120 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000bf),
    .Q(sig0000031e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000121 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000be),
    .Q(sig0000031d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000122 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000bd),
    .Q(sig0000031c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000123 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000bc),
    .Q(sig0000031b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000124 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000bb),
    .Q(sig0000031a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000125 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000ba),
    .Q(sig00000319)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000126 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b9),
    .Q(sig00000318)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000127 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000000b8),
    .Q(sig00000317)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000128 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000034b),
    .Q(sig0000025a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000034a),
    .Q(sig00000259)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000349),
    .Q(sig00000258)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000348),
    .Q(sig00000257)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000347),
    .Q(sig00000256)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012d (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000346),
    .Q(sig00000255)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012e (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000345),
    .Q(sig00000254)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012f (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000344),
    .Q(sig00000253)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000130 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000343),
    .Q(sig00000252)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000131 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000342),
    .Q(sig00000251)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000132 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000341),
    .Q(sig00000250)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000133 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000340),
    .Q(sig0000024f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000134 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000033f),
    .Q(sig0000024e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000135 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000033e),
    .Q(sig0000024d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000136 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000033d),
    .Q(sig0000024c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000137 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000033c),
    .Q(sig0000024b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000138 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000033b),
    .Q(sig0000024a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000139 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig0000033a),
    .Q(sig00000249)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013a (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000339),
    .Q(sig00000248)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013b (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000338),
    .Q(sig00000247)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013c (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000337),
    .Q(sig00000246)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013d (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000336),
    .Q(sig00000245)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013e (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000335),
    .Q(sig00000244)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013f (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000334),
    .Q(sig00000243)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000140 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000333),
    .Q(sig00000242)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000141 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000332),
    .Q(sig00000241)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000142 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000331),
    .Q(sig00000240)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000143 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig00000330),
    .Q(sig0000023f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000144 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002dc),
    .Q(sig0000034b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000145 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002db),
    .Q(sig0000034a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000146 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002da),
    .Q(sig00000349)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000147 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d9),
    .Q(sig00000348)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000148 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d8),
    .Q(sig00000347)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000149 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d7),
    .Q(sig00000346)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d6),
    .Q(sig00000345)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d5),
    .Q(sig00000344)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d4),
    .Q(sig00000343)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014d (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d3),
    .Q(sig00000342)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014e (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d2),
    .Q(sig00000341)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014f (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d1),
    .Q(sig00000340)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000150 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d0),
    .Q(sig0000033f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000151 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cf),
    .Q(sig0000033e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000152 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ce),
    .Q(sig0000033d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000153 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cd),
    .Q(sig0000033c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000154 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cc),
    .Q(sig0000033b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000155 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cb),
    .Q(sig0000033a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000156 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ca),
    .Q(sig00000339)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000157 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c9),
    .Q(sig00000338)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000158 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c8),
    .Q(sig00000337)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000159 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c7),
    .Q(sig00000336)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c6),
    .Q(sig00000335)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c5),
    .Q(sig00000334)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c4),
    .Q(sig00000333)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015d (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c3),
    .Q(sig00000332)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015e (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c2),
    .Q(sig00000331)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015f (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c1),
    .Q(sig00000330)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000160 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002dc),
    .Q(sig0000023e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000161 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002db),
    .Q(sig0000023d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000162 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002da),
    .Q(sig0000023c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000163 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d9),
    .Q(sig0000023b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000164 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d8),
    .Q(sig0000023a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000165 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d7),
    .Q(sig00000239)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000166 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d6),
    .Q(sig00000238)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000167 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d5),
    .Q(sig00000237)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000168 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d4),
    .Q(sig00000236)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000169 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d3),
    .Q(sig00000235)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016a (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d2),
    .Q(sig00000234)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016b (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d1),
    .Q(sig00000233)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016c (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002d0),
    .Q(sig00000232)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016d (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002cf),
    .Q(sig00000231)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016e (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002ce),
    .Q(sig00000230)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016f (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002cd),
    .Q(sig0000022f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000170 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002cc),
    .Q(sig0000022e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000171 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002cb),
    .Q(sig0000022d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000172 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002ca),
    .Q(sig0000022c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000173 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c9),
    .Q(sig0000022b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000174 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c8),
    .Q(sig0000022a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000175 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c7),
    .Q(sig00000229)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000176 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c6),
    .Q(sig00000228)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000177 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c5),
    .Q(sig00000227)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000178 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c4),
    .Q(sig00000226)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000179 (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c3),
    .Q(sig00000225)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000017a (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c2),
    .Q(sig00000224)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000017b (
    .C(clk),
    .CE(sig0000032f),
    .D(sig000002c1),
    .Q(sig00000223)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000017c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig0000034c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000017d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig0000034d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000017e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig0000034e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000017f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig0000034f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000180 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig00000350)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000181 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig00000351)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000182 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig00000352)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000183 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig00000353)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000184 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(sig00000354)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000185 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[14]),
    .Q(sig00000355)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000186 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[13]),
    .Q(sig00000356)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000187 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[12]),
    .Q(sig00000357)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000188 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[11]),
    .Q(sig00000358)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000189 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[10]),
    .Q(sig00000359)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000018a (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[9]),
    .Q(sig0000035a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000018b (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[8]),
    .Q(sig0000035b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000018c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[7]),
    .Q(sig0000035c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000018d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[6]),
    .Q(sig0000035d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000018e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[5]),
    .Q(sig0000035e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000018f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[4]),
    .Q(sig0000035f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000190 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[3]),
    .Q(sig00000360)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000191 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[2]),
    .Q(sig00000361)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000192 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[1]),
    .Q(sig00000362)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000193 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[0]),
    .Q(sig00000363)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000194 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000034c),
    .R(sig00000002),
    .Q(sig0000020a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000195 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000034d),
    .R(sig00000002),
    .Q(sig00000209)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000196 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000034e),
    .R(sig00000002),
    .Q(sig00000208)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000197 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000034f),
    .R(sig00000002),
    .Q(sig00000207)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000198 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000350),
    .R(sig00000002),
    .Q(sig00000206)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000199 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000351),
    .R(sig00000002),
    .Q(sig00000205)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000352),
    .R(sig00000002),
    .Q(sig00000204)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000353),
    .R(sig00000002),
    .Q(sig00000203)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000354),
    .R(sig00000002),
    .Q(sig00000202)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000355),
    .R(sig00000002),
    .Q(sig00000201)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000356),
    .R(sig00000002),
    .Q(sig00000200)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000357),
    .R(sig00000002),
    .Q(sig000001ff)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000358),
    .R(sig00000002),
    .Q(sig000001fe)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000359),
    .R(sig00000002),
    .Q(sig000001fd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035a),
    .R(sig00000002),
    .Q(sig000001fc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035b),
    .R(sig00000002),
    .Q(sig000001fb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035c),
    .R(sig00000002),
    .Q(sig000001fa)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035d),
    .R(sig00000002),
    .Q(sig000001f9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035e),
    .R(sig00000002),
    .Q(sig000001f8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035f),
    .R(sig00000002),
    .Q(sig000001f7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000360),
    .R(sig00000002),
    .Q(sig000001f6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000361),
    .R(sig00000002),
    .Q(sig000001f5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001aa (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000362),
    .R(sig00000002),
    .Q(sig000001f4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001ab (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000363),
    .R(sig00000002),
    .Q(sig000001f3)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001ac (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig00000364)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001ad (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig00000365)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001ae (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig00000366)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001af (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig00000367)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b0 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig00000368)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b1 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig00000369)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b2 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig0000036a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b3 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig0000036b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b4 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(sig0000036c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b5 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[14]),
    .Q(sig0000036d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b6 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[13]),
    .Q(sig0000036e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b7 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[12]),
    .Q(sig0000036f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b8 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[11]),
    .Q(sig00000370)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001b9 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[10]),
    .Q(sig00000371)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001ba (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[9]),
    .Q(sig00000372)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001bb (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[8]),
    .Q(sig00000373)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001bc (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[7]),
    .Q(sig00000374)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001bd (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[6]),
    .Q(sig00000375)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001be (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[5]),
    .Q(sig00000376)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001bf (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[4]),
    .Q(sig00000377)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001c0 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[3]),
    .Q(sig00000378)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001c1 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[2]),
    .Q(sig00000379)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001c2 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[1]),
    .Q(sig0000037a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000001c3 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[0]),
    .Q(sig0000037b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001c4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000364),
    .R(sig00000002),
    .Q(sig00000222)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001c5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000365),
    .R(sig00000002),
    .Q(sig00000221)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001c6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000366),
    .R(sig00000002),
    .Q(sig00000220)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001c7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000367),
    .R(sig00000002),
    .Q(sig0000021f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001c8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000368),
    .R(sig00000002),
    .Q(sig0000021e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001c9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000369),
    .R(sig00000002),
    .Q(sig0000021d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001ca (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000036a),
    .R(sig00000002),
    .Q(sig0000021c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001cb (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000036b),
    .R(sig00000002),
    .Q(sig0000021b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001cc (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000036c),
    .R(sig00000002),
    .Q(sig0000021a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001cd (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000036d),
    .R(sig00000002),
    .Q(sig00000219)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001ce (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000036e),
    .R(sig00000002),
    .Q(sig00000218)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001cf (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000036f),
    .R(sig00000002),
    .Q(sig00000217)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000370),
    .R(sig00000002),
    .Q(sig00000216)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000371),
    .R(sig00000002),
    .Q(sig00000215)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000372),
    .R(sig00000002),
    .Q(sig00000214)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000373),
    .R(sig00000002),
    .Q(sig00000213)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000374),
    .R(sig00000002),
    .Q(sig00000212)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000375),
    .R(sig00000002),
    .Q(sig00000211)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000376),
    .R(sig00000002),
    .Q(sig00000210)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000377),
    .R(sig00000002),
    .Q(sig0000020f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000378),
    .R(sig00000002),
    .Q(sig0000020e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001d9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000379),
    .R(sig00000002),
    .Q(sig0000020d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001da (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000037a),
    .R(sig00000002),
    .Q(sig0000020c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001db (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000037b),
    .R(sig00000002),
    .Q(sig0000020b)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001dc (
    .I0(sig000000e7),
    .I1(sig0000020a),
    .I2(sig00000005),
    .O(sig000001da)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001dd (
    .I0(sig000000e6),
    .I1(sig00000209),
    .I2(sig00000005),
    .O(sig000001d9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001de (
    .I0(sig000000e5),
    .I1(sig00000208),
    .I2(sig00000005),
    .O(sig000001d8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001df (
    .I0(sig000000e4),
    .I1(sig00000207),
    .I2(sig00000005),
    .O(sig000001d7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e0 (
    .I0(sig000000e3),
    .I1(sig00000206),
    .I2(sig00000005),
    .O(sig000001d6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e1 (
    .I0(sig000000e2),
    .I1(sig00000205),
    .I2(sig00000005),
    .O(sig000001d5)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e2 (
    .I0(sig000000e1),
    .I1(sig00000204),
    .I2(sig00000005),
    .O(sig000001d4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e3 (
    .I0(sig000000e0),
    .I1(sig00000203),
    .I2(sig00000005),
    .O(sig000001d3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e4 (
    .I0(sig000000df),
    .I1(sig00000202),
    .I2(sig00000005),
    .O(sig000001d2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e5 (
    .I0(sig000000de),
    .I1(sig00000201),
    .I2(sig00000005),
    .O(sig000001d1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e6 (
    .I0(sig000000dd),
    .I1(sig00000200),
    .I2(sig00000005),
    .O(sig000001d0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e7 (
    .I0(sig000000dc),
    .I1(sig000001ff),
    .I2(sig00000005),
    .O(sig000001cf)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e8 (
    .I0(sig000000db),
    .I1(sig000001fe),
    .I2(sig00000005),
    .O(sig000001ce)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001e9 (
    .I0(sig000000da),
    .I1(sig000001fd),
    .I2(sig00000005),
    .O(sig000001cd)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001ea (
    .I0(sig000000d9),
    .I1(sig000001fc),
    .I2(sig00000005),
    .O(sig000001cc)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001eb (
    .I0(sig000000d8),
    .I1(sig000001fb),
    .I2(sig00000005),
    .O(sig000001cb)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001ec (
    .I0(sig000000d7),
    .I1(sig000001fa),
    .I2(sig00000005),
    .O(sig000001ca)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001ed (
    .I0(sig000000d6),
    .I1(sig000001f9),
    .I2(sig00000005),
    .O(sig000001c9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001ee (
    .I0(sig000000d5),
    .I1(sig000001f8),
    .I2(sig00000005),
    .O(sig000001c8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001ef (
    .I0(sig000000d4),
    .I1(sig000001f7),
    .I2(sig00000005),
    .O(sig000001c7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f0 (
    .I0(sig000000d3),
    .I1(sig000001f6),
    .I2(sig00000005),
    .O(sig000001c6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f1 (
    .I0(sig000000d2),
    .I1(sig000001f5),
    .I2(sig00000005),
    .O(sig000001c5)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f2 (
    .I0(sig000000d1),
    .I1(sig000001f4),
    .I2(sig00000005),
    .O(sig000001c4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f3 (
    .I0(sig000000d0),
    .I1(sig000001f3),
    .I2(sig00000005),
    .O(sig000001c3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f4 (
    .I0(sig000000ff),
    .I1(sig00000222),
    .I2(sig00000005),
    .O(sig000001f2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f5 (
    .I0(sig000000fe),
    .I1(sig00000221),
    .I2(sig00000005),
    .O(sig000001f1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f6 (
    .I0(sig000000fd),
    .I1(sig00000220),
    .I2(sig00000005),
    .O(sig000001f0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f7 (
    .I0(sig000000fc),
    .I1(sig0000021f),
    .I2(sig00000005),
    .O(sig000001ef)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f8 (
    .I0(sig000000fb),
    .I1(sig0000021e),
    .I2(sig00000005),
    .O(sig000001ee)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001f9 (
    .I0(sig000000fa),
    .I1(sig0000021d),
    .I2(sig00000005),
    .O(sig000001ed)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001fa (
    .I0(sig000000f9),
    .I1(sig0000021c),
    .I2(sig00000005),
    .O(sig000001ec)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001fb (
    .I0(sig000000f8),
    .I1(sig0000021b),
    .I2(sig00000005),
    .O(sig000001eb)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001fc (
    .I0(sig000000f7),
    .I1(sig0000021a),
    .I2(sig00000005),
    .O(sig000001ea)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001fd (
    .I0(sig000000f6),
    .I1(sig00000219),
    .I2(sig00000005),
    .O(sig000001e9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001fe (
    .I0(sig000000f5),
    .I1(sig00000218),
    .I2(sig00000005),
    .O(sig000001e8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000001ff (
    .I0(sig000000f4),
    .I1(sig00000217),
    .I2(sig00000005),
    .O(sig000001e7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000200 (
    .I0(sig000000f3),
    .I1(sig00000216),
    .I2(sig00000005),
    .O(sig000001e6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000201 (
    .I0(sig000000f2),
    .I1(sig00000215),
    .I2(sig00000005),
    .O(sig000001e5)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000202 (
    .I0(sig000000f1),
    .I1(sig00000214),
    .I2(sig00000005),
    .O(sig000001e4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000203 (
    .I0(sig000000f0),
    .I1(sig00000213),
    .I2(sig00000005),
    .O(sig000001e3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000204 (
    .I0(sig000000ef),
    .I1(sig00000212),
    .I2(sig00000005),
    .O(sig000001e2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000205 (
    .I0(sig000000ee),
    .I1(sig00000211),
    .I2(sig00000005),
    .O(sig000001e1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000206 (
    .I0(sig000000ed),
    .I1(sig00000210),
    .I2(sig00000005),
    .O(sig000001e0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000207 (
    .I0(sig000000ec),
    .I1(sig0000020f),
    .I2(sig00000005),
    .O(sig000001df)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000208 (
    .I0(sig000000eb),
    .I1(sig0000020e),
    .I2(sig00000005),
    .O(sig000001de)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000209 (
    .I0(sig000000ea),
    .I1(sig0000020d),
    .I2(sig00000005),
    .O(sig000001dd)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000020a (
    .I0(sig000000e9),
    .I1(sig0000020c),
    .I2(sig00000005),
    .O(sig000001dc)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000020b (
    .I0(sig000000e8),
    .I1(sig0000020b),
    .I2(sig00000005),
    .O(sig000001db)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000241 (
    .I0(sig00000002),
    .I1(sig000001aa),
    .I2(sig00000007),
    .O(sig0000037c)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000242 (
    .I0(sig00000002),
    .I1(sig000001a9),
    .I2(sig00000007),
    .O(sig0000037d)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000243 (
    .I0(sig00000002),
    .I1(sig000001a8),
    .I2(sig00000007),
    .O(sig0000037e)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000244 (
    .I0(sig00000002),
    .I1(sig000001a7),
    .I2(sig00000007),
    .O(sig0000037f)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000245 (
    .I0(sig00000002),
    .I1(sig000001a6),
    .I2(sig00000007),
    .O(sig00000380)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000246 (
    .I0(sig00000002),
    .I1(sig000001a5),
    .I2(sig00000007),
    .O(sig00000381)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000247 (
    .I0(sig00000002),
    .I1(sig000001a4),
    .I2(sig00000007),
    .O(sig00000382)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000248 (
    .I0(sig00000002),
    .I1(sig000001a3),
    .I2(sig00000007),
    .O(sig00000383)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000249 (
    .I0(sig00000002),
    .I1(sig000001a2),
    .I2(sig00000007),
    .O(sig00000384)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000024a (
    .I0(sig00000002),
    .I1(sig000001a1),
    .I2(sig00000007),
    .O(sig00000385)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000024b (
    .I0(sig00000002),
    .I1(sig000001a0),
    .I2(sig00000007),
    .O(sig00000386)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000024c (
    .I0(sig00000002),
    .I1(sig0000019f),
    .I2(sig00000007),
    .O(sig00000387)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000024d (
    .I0(sig00000002),
    .I1(sig0000019e),
    .I2(sig00000007),
    .O(sig00000388)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000024e (
    .I0(sig00000002),
    .I1(sig0000019d),
    .I2(sig00000007),
    .O(sig00000389)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000024f (
    .I0(sig00000002),
    .I1(sig0000019c),
    .I2(sig00000007),
    .O(sig0000038a)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000250 (
    .I0(sig00000002),
    .I1(sig0000019b),
    .I2(sig00000007),
    .O(sig0000038b)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000251 (
    .I0(sig00000002),
    .I1(sig0000019a),
    .I2(sig00000007),
    .O(sig0000038c)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000252 (
    .I0(sig00000002),
    .I1(sig00000199),
    .I2(sig00000007),
    .O(sig0000038d)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000253 (
    .I0(sig00000002),
    .I1(sig00000198),
    .I2(sig00000007),
    .O(sig0000038e)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000254 (
    .I0(sig00000002),
    .I1(sig00000197),
    .I2(sig00000007),
    .O(sig0000038f)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000255 (
    .I0(sig00000002),
    .I1(sig00000196),
    .I2(sig00000007),
    .O(sig00000390)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000256 (
    .I0(sig00000002),
    .I1(sig00000195),
    .I2(sig00000007),
    .O(sig00000391)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000257 (
    .I0(sig00000002),
    .I1(sig00000194),
    .I2(sig00000007),
    .O(sig00000392)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000258 (
    .I0(sig00000002),
    .I1(sig00000193),
    .I2(sig00000007),
    .O(sig00000393)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000259 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000037c),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000037d),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025b (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000037e),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000037f),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000380),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000381),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000382),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000260 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000383),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000261 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000384),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000262 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000385),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000263 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000386),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000264 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000387),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000265 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000388),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000266 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000389),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000267 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000038a),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000268 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000038b),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000269 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000038c),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000038d),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026b (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000038e),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000038f),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000390),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000391),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000392),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000270 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000393),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000271 (
    .I0(sig00000002),
    .I1(sig000001c2),
    .I2(sig00000007),
    .O(sig00000394)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000272 (
    .I0(sig00000002),
    .I1(sig000001c1),
    .I2(sig00000007),
    .O(sig00000395)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000273 (
    .I0(sig00000002),
    .I1(sig000001c0),
    .I2(sig00000007),
    .O(sig00000396)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000274 (
    .I0(sig00000002),
    .I1(sig000001bf),
    .I2(sig00000007),
    .O(sig00000397)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000275 (
    .I0(sig00000002),
    .I1(sig000001be),
    .I2(sig00000007),
    .O(sig00000398)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000276 (
    .I0(sig00000002),
    .I1(sig000001bd),
    .I2(sig00000007),
    .O(sig00000399)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000277 (
    .I0(sig00000002),
    .I1(sig000001bc),
    .I2(sig00000007),
    .O(sig0000039a)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000278 (
    .I0(sig00000002),
    .I1(sig000001bb),
    .I2(sig00000007),
    .O(sig0000039b)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000279 (
    .I0(sig00000002),
    .I1(sig000001ba),
    .I2(sig00000007),
    .O(sig0000039c)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000027a (
    .I0(sig00000002),
    .I1(sig000001b9),
    .I2(sig00000007),
    .O(sig0000039d)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000027b (
    .I0(sig00000002),
    .I1(sig000001b8),
    .I2(sig00000007),
    .O(sig0000039e)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000027c (
    .I0(sig00000002),
    .I1(sig000001b7),
    .I2(sig00000007),
    .O(sig0000039f)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000027d (
    .I0(sig00000002),
    .I1(sig000001b6),
    .I2(sig00000007),
    .O(sig000003a0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000027e (
    .I0(sig00000002),
    .I1(sig000001b5),
    .I2(sig00000007),
    .O(sig000003a1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000027f (
    .I0(sig00000002),
    .I1(sig000001b4),
    .I2(sig00000007),
    .O(sig000003a2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000280 (
    .I0(sig00000002),
    .I1(sig000001b3),
    .I2(sig00000007),
    .O(sig000003a3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000281 (
    .I0(sig00000002),
    .I1(sig000001b2),
    .I2(sig00000007),
    .O(sig000003a4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000282 (
    .I0(sig00000002),
    .I1(sig000001b1),
    .I2(sig00000007),
    .O(sig000003a5)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000283 (
    .I0(sig00000002),
    .I1(sig000001b0),
    .I2(sig00000007),
    .O(sig000003a6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000284 (
    .I0(sig00000002),
    .I1(sig000001af),
    .I2(sig00000007),
    .O(sig000003a7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000285 (
    .I0(sig00000002),
    .I1(sig000001ae),
    .I2(sig00000007),
    .O(sig000003a8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000286 (
    .I0(sig00000002),
    .I1(sig000001ad),
    .I2(sig00000007),
    .O(sig000003a9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000287 (
    .I0(sig00000002),
    .I1(sig000001ac),
    .I2(sig00000007),
    .O(sig000003aa)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000288 (
    .I0(sig00000002),
    .I1(sig000001ab),
    .I2(sig00000007),
    .O(sig000003ab)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000289 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000394),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000395),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000396),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000397),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000398),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000399),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039a),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000290 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039b),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000291 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039c),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000292 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039d),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000293 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039e),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000294 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039f),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000295 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a0),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000296 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a1),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000297 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a2),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000298 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a3),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000299 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a4),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a5),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a6),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a7),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029d (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a8),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029e (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a9),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029f (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003aa),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ab),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002a7 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000087),
    .Q(sig000003ac)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002a8 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000086),
    .Q(sig000003ad)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002a9 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000085),
    .Q(sig000003ae)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002aa (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000084),
    .Q(sig000003af)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ab (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000083),
    .Q(sig000003b0)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ac (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000082),
    .Q(sig000003b1)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ad (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000081),
    .Q(sig000003b2)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ae (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000080),
    .Q(sig000003b3)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002af (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000007f),
    .Q(sig000003b4)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b0 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000007e),
    .Q(sig000003b5)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b1 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000007d),
    .Q(sig000003b6)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b2 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000007c),
    .Q(sig000003b7)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b3 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000007b),
    .Q(sig000003b8)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b4 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000007a),
    .Q(sig000003b9)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b5 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000079),
    .Q(sig000003ba)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b6 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000078),
    .Q(sig000003bb)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b7 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000077),
    .Q(sig000003bc)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b8 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000076),
    .Q(sig000003bd)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002b9 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000075),
    .Q(sig000003be)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ba (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000074),
    .Q(sig000003bf)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002bb (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000073),
    .Q(sig000003c0)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002bc (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000072),
    .Q(sig000003c1)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002bd (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000071),
    .Q(sig000003c2)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002be (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000070),
    .Q(sig000003c3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002bf (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ac),
    .R(sig00000002),
    .Q(sig00000179)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ad),
    .R(sig00000002),
    .Q(sig00000178)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ae),
    .R(sig00000002),
    .Q(sig00000177)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003af),
    .R(sig00000002),
    .Q(sig00000176)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b0),
    .R(sig00000002),
    .Q(sig00000175)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b1),
    .R(sig00000002),
    .Q(sig00000174)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b2),
    .R(sig00000002),
    .Q(sig00000173)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b3),
    .R(sig00000002),
    .Q(sig00000172)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b4),
    .R(sig00000002),
    .Q(sig00000171)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b5),
    .R(sig00000002),
    .Q(sig00000170)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b6),
    .R(sig00000002),
    .Q(sig0000016f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ca (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b7),
    .R(sig00000002),
    .Q(sig0000016e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cb (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b8),
    .R(sig00000002),
    .Q(sig0000016d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cc (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003b9),
    .R(sig00000002),
    .Q(sig0000016c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cd (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ba),
    .R(sig00000002),
    .Q(sig0000016b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ce (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003bb),
    .R(sig00000002),
    .Q(sig0000016a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cf (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003bc),
    .R(sig00000002),
    .Q(sig00000169)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003bd),
    .R(sig00000002),
    .Q(sig00000168)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003be),
    .R(sig00000002),
    .Q(sig00000167)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003bf),
    .R(sig00000002),
    .Q(sig00000166)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c0),
    .R(sig00000002),
    .Q(sig00000165)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c1),
    .R(sig00000002),
    .Q(sig00000164)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c2),
    .R(sig00000002),
    .Q(sig00000163)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c3),
    .R(sig00000002),
    .Q(sig00000162)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d7 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000009f),
    .Q(sig000003c4)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d8 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000009e),
    .Q(sig000003c5)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d9 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000009d),
    .Q(sig000003c6)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002da (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000009c),
    .Q(sig000003c7)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002db (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000009b),
    .Q(sig000003c8)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002dc (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000009a),
    .Q(sig000003c9)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002dd (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000099),
    .Q(sig000003ca)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002de (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000098),
    .Q(sig000003cb)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002df (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000097),
    .Q(sig000003cc)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e0 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000096),
    .Q(sig000003cd)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e1 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000095),
    .Q(sig000003ce)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e2 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000094),
    .Q(sig000003cf)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e3 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000093),
    .Q(sig000003d0)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e4 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000092),
    .Q(sig000003d1)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e5 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000091),
    .Q(sig000003d2)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e6 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000090),
    .Q(sig000003d3)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e7 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008f),
    .Q(sig000003d4)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e8 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008e),
    .Q(sig000003d5)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002e9 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008d),
    .Q(sig000003d6)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ea (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008c),
    .Q(sig000003d7)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002eb (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008b),
    .Q(sig000003d8)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ec (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008a),
    .Q(sig000003d9)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ed (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000089),
    .Q(sig000003da)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ee (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000088),
    .Q(sig000003db)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ef (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c4),
    .R(sig00000002),
    .Q(sig00000191)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c5),
    .R(sig00000002),
    .Q(sig00000190)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c6),
    .R(sig00000002),
    .Q(sig0000018f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c7),
    .R(sig00000002),
    .Q(sig0000018e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c8),
    .R(sig00000002),
    .Q(sig0000018d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003c9),
    .R(sig00000002),
    .Q(sig0000018c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ca),
    .R(sig00000002),
    .Q(sig0000018b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003cb),
    .R(sig00000002),
    .Q(sig0000018a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003cc),
    .R(sig00000002),
    .Q(sig00000189)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003cd),
    .R(sig00000002),
    .Q(sig00000188)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003ce),
    .R(sig00000002),
    .Q(sig00000187)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fa (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003cf),
    .R(sig00000002),
    .Q(sig00000186)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fb (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d0),
    .R(sig00000002),
    .Q(sig00000185)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fc (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d1),
    .R(sig00000002),
    .Q(sig00000184)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fd (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d2),
    .R(sig00000002),
    .Q(sig00000183)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fe (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d3),
    .R(sig00000002),
    .Q(sig00000182)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ff (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d4),
    .R(sig00000002),
    .Q(sig00000181)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000300 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d5),
    .R(sig00000002),
    .Q(sig00000180)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000301 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d6),
    .R(sig00000002),
    .Q(sig0000017f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000302 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d7),
    .R(sig00000002),
    .Q(sig0000017e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000303 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d8),
    .R(sig00000002),
    .Q(sig0000017d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000304 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003d9),
    .R(sig00000002),
    .Q(sig0000017c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000305 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003da),
    .R(sig00000002),
    .Q(sig0000017b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000306 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003db),
    .R(sig00000002),
    .Q(sig0000017a)
  );
  LUT1 #(
    .INIT ( 2'h1 ))
  blk0000030d (
    .I0(sig00000002),
    .O(sig0000043b)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000030e (
    .I0(sig00000472),
    .I1(sig00000425),
    .O(sig0000043e)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk0000030f (
    .I0(sig000004b6),
    .I1(sig00000482),
    .I2(sig0000043a),
    .I3(sig0000041f),
    .O(sig0000044f)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000310 (
    .I0(sig000004b5),
    .I1(sig00000482),
    .I2(sig0000043a),
    .I3(sig00000420),
    .O(sig00000450)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000311 (
    .I0(sig000004b4),
    .I1(sig00000482),
    .I2(sig0000043a),
    .I3(sig00000421),
    .O(sig00000451)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000312 (
    .I0(sig000004b3),
    .I1(sig00000482),
    .I2(sig0000043a),
    .I3(sig00000422),
    .O(sig00000452)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000313 (
    .I0(sig000004b2),
    .I1(sig00000482),
    .I2(sig0000043a),
    .I3(sig00000423),
    .O(sig00000453)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000314 (
    .I0(sig000004b1),
    .I1(sig00000482),
    .I2(sig0000043a),
    .I3(sig00000424),
    .O(sig00000454)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  blk00000315 (
    .I0(sig00000483),
    .I1(sig00000431),
    .I2(sig00000430),
    .O(sig00000455)
  );
  MUXCY   blk00000316 (
    .CI(sig0000045e),
    .DI(sig00000002),
    .S(sig0000043b),
    .O(sig0000045a)
  );
  MUXCY   blk00000317 (
    .CI(sig0000045d),
    .DI(sig00000002),
    .S(sig00000446),
    .O(sig0000045c)
  );
  MUXCY   blk00000318 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000447),
    .O(sig0000045d)
  );
  MUXCY   blk00000319 (
    .CI(sig0000045f),
    .DI(sig00000002),
    .S(sig00000448),
    .O(sig0000045e)
  );
  MUXCY   blk0000031a (
    .CI(sig00000460),
    .DI(sig00000002),
    .S(sig00000449),
    .O(sig0000045f)
  );
  MUXCY   blk0000031b (
    .CI(sig00000461),
    .DI(sig00000002),
    .S(sig0000044a),
    .O(sig00000460)
  );
  MUXCY   blk0000031c (
    .CI(sig00000462),
    .DI(sig00000002),
    .S(sig0000044b),
    .O(sig00000461)
  );
  MUXCY   blk0000031d (
    .CI(sig00000463),
    .DI(sig00000002),
    .S(sig0000044c),
    .O(sig00000462)
  );
  MUXCY   blk0000031e (
    .CI(sig00000464),
    .DI(sig00000002),
    .S(sig0000044d),
    .O(sig00000463)
  );
  MUXCY   blk0000031f (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000044e),
    .O(sig00000464)
  );
  XORCY   blk00000320 (
    .CI(sig0000045a),
    .LI(sig00000002),
    .O(sig00000469)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000321 (
    .C(clk),
    .D(sig000003e2),
    .Q(sig0000040b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000322 (
    .C(clk),
    .D(sig000003e1),
    .Q(sig0000040a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000323 (
    .C(clk),
    .D(sig000003e0),
    .Q(sig00000409)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000324 (
    .C(clk),
    .D(sig000003df),
    .Q(sig00000408)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000325 (
    .C(clk),
    .D(sig000003de),
    .Q(sig00000407)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000326 (
    .C(clk),
    .D(sig000003dd),
    .Q(sig00000406)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000327 (
    .C(clk),
    .D(sig000003dc),
    .Q(sig00000405)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000328 (
    .C(clk),
    .CE(sig0000043d),
    .D(sig00000465),
    .Q(sig0000040c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000329 (
    .C(clk),
    .CE(sig0000043d),
    .D(sig00000466),
    .Q(sig0000040d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000032a (
    .C(clk),
    .CE(sig0000043d),
    .D(sig00000467),
    .Q(sig0000040e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000032b (
    .C(clk),
    .CE(sig0000043d),
    .D(sig00000468),
    .Q(sig0000040f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043f),
    .R(sig00000002),
    .Q(sig00000410)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000440),
    .R(sig00000002),
    .Q(sig00000411)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000441),
    .R(sig00000002),
    .Q(sig00000412)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000442),
    .R(sig00000002),
    .Q(sig00000413)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000330 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000443),
    .R(sig00000002),
    .Q(sig00000414)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000331 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000444),
    .R(sig00000002),
    .Q(sig00000415)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000332 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000445),
    .R(sig00000002),
    .Q(sig00000416)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000333 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000002),
    .R(sig00000002),
    .Q(sig00000417)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000334 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000046a),
    .R(sig00000002),
    .Q(sig00000418)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000335 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000046b),
    .R(sig00000002),
    .Q(sig00000419)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000336 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000046c),
    .R(sig00000002),
    .Q(sig0000041a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000337 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000046d),
    .R(sig00000002),
    .Q(sig0000041b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000338 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000046e),
    .R(sig00000002),
    .Q(sig0000041c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000339 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000046f),
    .R(sig00000002),
    .Q(sig0000041d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000470),
    .R(sig00000002),
    .Q(sig0000041e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000033b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000469),
    .Q(sig00000482)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000429),
    .R(sig00000002),
    .Q(sig0000041f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033d (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000042a),
    .R(sig00000002),
    .Q(sig00000420)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000042b),
    .R(sig00000002),
    .Q(sig00000421)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000042c),
    .R(sig00000002),
    .Q(sig00000422)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000340 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000042d),
    .R(sig00000002),
    .Q(sig00000423)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000341 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000042e),
    .R(sig00000002),
    .Q(sig00000424)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000342 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000045c),
    .R(sig00000002),
    .Q(sig00000425)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000343 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043e),
    .R(sig00000002),
    .Q(sig00000426)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000344 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e3),
    .Q(sig000004ad)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000345 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e4),
    .Q(sig000004ac)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000346 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e5),
    .Q(sig000004ab)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000347 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e6),
    .Q(sig000004aa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000348 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e7),
    .Q(sig000004a9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000349 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e8),
    .Q(sig000004a8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000034a (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003e9),
    .Q(sig000004a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000034b (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003ea),
    .Q(sig000004a6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000034c (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003eb),
    .Q(sig000004a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000034d (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003ec),
    .Q(sig000004a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000034e (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003ed),
    .Q(sig000004a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000034f (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003ee),
    .Q(sig000004a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000350 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003ef),
    .Q(sig000004a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000351 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f0),
    .Q(sig000004a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000352 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f1),
    .Q(sig0000049f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000353 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f2),
    .Q(sig0000049e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000354 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f3),
    .Q(sig0000049d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000355 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f4),
    .Q(sig0000049c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000356 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f5),
    .Q(sig0000049b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000357 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f6),
    .Q(sig0000049a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000358 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f7),
    .Q(sig00000499)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000359 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f8),
    .Q(sig00000498)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000035a (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003f9),
    .Q(sig00000497)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000035b (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003fa),
    .Q(sig00000496)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000035c (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003fb),
    .Q(sig00000495)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000035d (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003fc),
    .Q(sig00000494)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000035e (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003fd),
    .Q(sig00000493)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000035f (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003fe),
    .Q(sig00000492)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000360 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig000003ff),
    .Q(sig00000491)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000361 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig00000400),
    .Q(sig00000490)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000362 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig00000401),
    .Q(sig0000048f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000363 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig00000402),
    .Q(sig0000048e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000364 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig00000403),
    .Q(sig0000048d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000365 (
    .C(clk),
    .CE(sig000004b0),
    .D(sig00000404),
    .Q(sig0000048c)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000366 (
    .C(clk),
    .D(sig0000044f),
    .R(sig00000002),
    .Q(sig000004b6)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000367 (
    .C(clk),
    .D(sig00000450),
    .R(sig00000002),
    .Q(sig000004b5)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000368 (
    .C(clk),
    .D(sig00000451),
    .R(sig00000002),
    .Q(sig000004b4)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000369 (
    .C(clk),
    .D(sig00000452),
    .R(sig00000002),
    .Q(sig000004b3)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000036a (
    .C(clk),
    .D(sig00000453),
    .R(sig00000002),
    .Q(sig000004b2)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000036b (
    .C(clk),
    .D(sig00000454),
    .R(sig00000002),
    .Q(sig000004b1)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000036c (
    .C(clk),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000036d (
    .C(clk),
    .D(sig00000439),
    .R(sig00000002),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000036e (
    .C(clk),
    .D(sig00000428),
    .R(sig00000002),
    .Q(sig00000439)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000036f (
    .C(clk),
    .D(sig0000043c),
    .Q(sig00000428)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000370 (
    .C(clk),
    .D(sig0000043a),
    .R(sig00000002),
    .Q(sig00000437)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000371 (
    .C(clk),
    .D(sig00000405),
    .R(sig00000002),
    .Q(sig00000474)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000372 (
    .C(clk),
    .D(sig00000406),
    .R(sig00000002),
    .Q(sig00000475)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000373 (
    .C(clk),
    .D(sig00000407),
    .R(sig00000002),
    .Q(sig00000476)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000374 (
    .C(clk),
    .D(sig00000408),
    .R(sig00000002),
    .Q(sig00000477)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000375 (
    .C(clk),
    .D(sig00000409),
    .R(sig00000002),
    .Q(sig00000478)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000376 (
    .C(clk),
    .D(sig0000040a),
    .R(sig00000002),
    .Q(sig00000479)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000377 (
    .C(clk),
    .D(sig0000040b),
    .R(sig00000002),
    .Q(sig0000047a)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000378 (
    .C(clk),
    .D(sig00000455),
    .R(sig00000002),
    .Q(sig0000043c)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000379 (
    .C(clk),
    .D(sig00000431),
    .R(sig00000002),
    .Q(sig00000432)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000037a (
    .C(clk),
    .D(sig00000430),
    .R(sig00000002),
    .Q(sig00000431)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000037b (
    .C(clk),
    .D(sig0000048b),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000037c (
    .C(clk),
    .D(sig0000046a),
    .R(sig00000002),
    .Q(sig00000429)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000037d (
    .C(clk),
    .D(sig0000046b),
    .R(sig00000002),
    .Q(sig0000042a)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000037e (
    .C(clk),
    .D(sig0000046c),
    .R(sig00000002),
    .Q(sig0000042b)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000037f (
    .C(clk),
    .D(sig0000046d),
    .R(sig00000002),
    .Q(sig0000042c)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000380 (
    .C(clk),
    .D(sig0000046e),
    .R(sig00000002),
    .Q(sig0000042d)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000381 (
    .C(clk),
    .D(sig0000046f),
    .R(sig00000002),
    .Q(sig0000042e)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000382 (
    .C(clk),
    .D(sig00000436),
    .R(sig00000002),
    .Q(sig00000008)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000383 (
    .C(clk),
    .D(sig00000435),
    .R(sig00000002),
    .Q(sig00000006)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000384 (
    .C(clk),
    .D(sig000004b0),
    .R(sig00000002),
    .Q(sig0000048b)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000385 (
    .C(clk),
    .D(sig00000434),
    .R(sig00000002),
    .Q(sig000004b0)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000386 (
    .C(clk),
    .D(sig00000410),
    .R(sig00000002),
    .Q(sig00000436)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000387 (
    .C(clk),
    .D(sig00000433),
    .R(sig00000002),
    .Q(sig00000435)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000388 (
    .C(clk),
    .D(sig00000483),
    .R(sig00000002),
    .Q(sig0000042f)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000389 (
    .C(clk),
    .D(sig00000432),
    .R(sig00000002),
    .Q(sig00000433)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000038a (
    .C(clk),
    .D(sig0000045b),
    .R(sig00000002),
    .Q(sig00000438)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000391 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004bf),
    .R(sig00000002),
    .Q(sig000004b7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000392 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004c3),
    .R(sig00000002),
    .Q(sig000004bb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000393 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004c0),
    .R(sig00000002),
    .Q(sig000004b8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000394 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004c2),
    .R(sig00000002),
    .Q(sig00000009)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000395 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004c1),
    .R(sig00000002),
    .Q(sig000004b9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000396 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004c4),
    .R(sig00000002),
    .Q(sig000004ba)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000397 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004be),
    .S(sig00000002),
    .Q(sig00000003)
  );
  XORCY   blk00000398 (
    .CI(sig000004da),
    .LI(sig00000002),
    .O(sig000004cc)
  );
  XORCY   blk00000399 (
    .CI(sig000004db),
    .LI(sig00000002),
    .O(sig000004cd)
  );
  XORCY   blk0000039a (
    .CI(sig000004dc),
    .LI(sig00000002),
    .O(sig000004ce)
  );
  MUXCY   blk0000039b (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000004e3),
    .O(sig000004cf)
  );
  MUXCY   blk0000039c (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000004e4),
    .O(sig000004d0)
  );
  MUXCY   blk0000039d (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000004e5),
    .O(sig000004d1)
  );
  MUXCY   blk0000039e (
    .CI(sig000004dd),
    .DI(sig00000002),
    .S(sig000004e9),
    .O(sig000004da)
  );
  MUXCY   blk0000039f (
    .CI(sig000004de),
    .DI(sig00000002),
    .S(sig000004ea),
    .O(sig000004db)
  );
  MUXCY   blk000003a0 (
    .CI(sig000004df),
    .DI(sig00000002),
    .S(sig000004eb),
    .O(sig000004dc)
  );
  MUXCY   blk000003a1 (
    .CI(sig000004e6),
    .DI(sig00000473),
    .S(sig000004e0),
    .O(sig000004dd)
  );
  MUXCY   blk000003a2 (
    .CI(sig000004e7),
    .DI(sig00000472),
    .S(sig000004e1),
    .O(sig000004de)
  );
  MUXCY   blk000003a3 (
    .CI(sig000004e8),
    .DI(sig00000471),
    .S(sig000004e2),
    .O(sig000004df)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000003a4 (
    .I0(sig00000001),
    .I1(sig00000001),
    .I2(sig00000471),
    .O(sig000004e0)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000003a5 (
    .I0(sig00000001),
    .I1(sig00000001),
    .I2(sig00000471),
    .O(sig000004e1)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000003a6 (
    .I0(sig00000001),
    .I1(sig00000001),
    .I2(sig00000471),
    .O(sig000004e2)
  );
  MUXCY   blk000003a7 (
    .CI(sig000004d0),
    .DI(sig00000002),
    .S(sig00000546),
    .O(sig000004e6)
  );
  MUXCY   blk000003a8 (
    .CI(sig000004cf),
    .DI(sig00000002),
    .S(sig00000547),
    .O(sig000004e7)
  );
  MUXCY   blk000003a9 (
    .CI(sig000004d1),
    .DI(sig00000002),
    .S(sig00000548),
    .O(sig000004e8)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000003aa (
    .I0(sig000004ba),
    .I1(sig00000009),
    .I2(sig000004bb),
    .I3(sig00000003),
    .O(sig000004e9)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000003ab (
    .I0(sig000004ba),
    .I1(sig00000009),
    .I2(sig000004bb),
    .I3(sig00000003),
    .O(sig000004ea)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000003ac (
    .I0(sig000004ba),
    .I1(sig00000009),
    .I2(sig000004bb),
    .I3(sig00000003),
    .O(sig000004eb)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000003ad (
    .C(clk),
    .D(sig000004cc),
    .Q(sig00000473)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000003ae (
    .C(clk),
    .D(sig000004cd),
    .Q(sig00000472)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000003af (
    .C(clk),
    .D(sig000004ce),
    .Q(sig00000471)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b0 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004c5),
    .R(sig00000003),
    .Q(sig00000470)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b1 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004c6),
    .R(sig00000003),
    .Q(sig0000046f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b2 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004c7),
    .R(sig00000003),
    .Q(sig0000046e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b3 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004c8),
    .R(sig00000003),
    .Q(sig0000046d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b4 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004c9),
    .R(sig00000003),
    .Q(sig0000046c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b5 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004ca),
    .R(sig00000003),
    .Q(sig0000046b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b6 (
    .C(clk),
    .CE(sig000004d2),
    .D(sig000004cb),
    .R(sig00000003),
    .Q(sig0000046a)
  );
  MUXF7   blk000003cd (
    .I0(sig000004fa),
    .I1(sig000004f3),
    .S(sig0000040d),
    .O(sig000004ec)
  );
  MUXF7   blk000003ce (
    .I0(sig000004fb),
    .I1(sig000004f4),
    .S(sig0000040d),
    .O(sig000004ed)
  );
  MUXF7   blk000003cf (
    .I0(sig000004fc),
    .I1(sig000004f5),
    .S(sig0000040d),
    .O(sig000004ee)
  );
  MUXF7   blk000003d0 (
    .I0(sig000004fd),
    .I1(sig000004f6),
    .S(sig0000040d),
    .O(sig000004ef)
  );
  MUXF7   blk000003d1 (
    .I0(sig000004fe),
    .I1(sig000004f7),
    .S(sig0000040d),
    .O(sig000004f0)
  );
  MUXF7   blk000003d2 (
    .I0(sig000004ff),
    .I1(sig000004f8),
    .S(sig0000040d),
    .O(sig000004f1)
  );
  MUXF7   blk000003d3 (
    .I0(sig00000500),
    .I1(sig000004f9),
    .S(sig0000040d),
    .O(sig000004f2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d4 (
    .I0(sig0000046d),
    .I1(sig0000046e),
    .I2(sig0000046f),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d5 (
    .I0(sig0000046c),
    .I1(sig0000046d),
    .I2(sig0000046e),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d6 (
    .I0(sig0000046b),
    .I1(sig0000046c),
    .I2(sig0000046d),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d7 (
    .I0(sig0000046a),
    .I1(sig0000046b),
    .I2(sig0000046c),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d8 (
    .I0(sig0000043f),
    .I1(sig0000046a),
    .I2(sig0000046b),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d9 (
    .I0(sig0000046f),
    .I1(sig0000043f),
    .I2(sig0000046a),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003da (
    .I0(sig0000046e),
    .I1(sig0000046f),
    .I2(sig0000043f),
    .I3(sig00000002),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004f9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003db (
    .I0(sig0000043f),
    .I1(sig0000046a),
    .I2(sig0000046b),
    .I3(sig0000046c),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004fa)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003dc (
    .I0(sig0000046f),
    .I1(sig0000043f),
    .I2(sig0000046a),
    .I3(sig0000046b),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004fb)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003dd (
    .I0(sig0000046e),
    .I1(sig0000046f),
    .I2(sig0000043f),
    .I3(sig0000046a),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004fc)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003de (
    .I0(sig0000046d),
    .I1(sig0000046e),
    .I2(sig0000046f),
    .I3(sig0000043f),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004fd)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003df (
    .I0(sig0000046c),
    .I1(sig0000046d),
    .I2(sig0000046e),
    .I3(sig0000046f),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004fe)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003e0 (
    .I0(sig0000046b),
    .I1(sig0000046c),
    .I2(sig0000046d),
    .I3(sig0000046e),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig000004ff)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003e1 (
    .I0(sig0000046a),
    .I1(sig0000046b),
    .I2(sig0000046c),
    .I3(sig0000046d),
    .I4(sig0000040f),
    .I5(sig0000040e),
    .O(sig00000500)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004ec),
    .R(sig00000002),
    .Q(sig000003e2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004ed),
    .R(sig00000002),
    .Q(sig000003e1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004ee),
    .R(sig00000002),
    .Q(sig000003e0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004ef),
    .R(sig00000002),
    .Q(sig000003df)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004f0),
    .R(sig00000002),
    .Q(sig000003de)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004f1),
    .R(sig00000002),
    .Q(sig000003dd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000004f2),
    .R(sig00000002),
    .Q(sig000003dc)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003e9 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000405),
    .Q(sig00000501)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ea (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000406),
    .Q(sig00000502)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003eb (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000407),
    .Q(sig00000503)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ec (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000408),
    .Q(sig00000504)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ed (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000409),
    .Q(sig00000505)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ee (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000040a),
    .Q(sig00000506)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ef (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000040b),
    .Q(sig00000507)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000501),
    .R(sig00000002),
    .Q(sig0000047b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000502),
    .R(sig00000002),
    .Q(sig0000047c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000503),
    .R(sig00000002),
    .Q(sig0000047d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000504),
    .R(sig00000002),
    .Q(sig0000047e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000505),
    .R(sig00000002),
    .Q(sig0000047f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000506),
    .R(sig00000002),
    .Q(sig00000480)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000507),
    .R(sig00000002),
    .Q(sig00000481)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000422 (
    .C(clk),
    .D(sig0000051c),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000423 (
    .C(clk),
    .D(sig0000051b),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000424 (
    .C(clk),
    .D(sig0000051a),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000425 (
    .C(clk),
    .D(sig00000519),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000426 (
    .C(clk),
    .D(sig00000518),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000427 (
    .C(clk),
    .D(sig00000517),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000428 (
    .C(clk),
    .D(sig00000516),
    .R(sig00000508),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000429 (
    .C(clk),
    .D(sig00000007),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000042a (
    .C(clk),
    .D(sig00000510),
    .R(sig00000002),
    .Q(sig00000513)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000042b (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046a),
    .Q(sig0000051d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000042c (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046b),
    .Q(sig0000051e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000042d (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046c),
    .Q(sig0000051f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000042e (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046d),
    .Q(sig00000520)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000042f (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046e),
    .Q(sig00000521)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000430 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046f),
    .Q(sig00000522)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000431 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000470),
    .Q(sig00000523)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000432 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000051d),
    .R(sig00000002),
    .Q(sig0000051c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000433 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000051e),
    .R(sig00000002),
    .Q(sig0000051b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000434 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000051f),
    .R(sig00000002),
    .Q(sig0000051a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000435 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000520),
    .R(sig00000002),
    .Q(sig00000519)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000436 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000521),
    .R(sig00000002),
    .Q(sig00000518)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000437 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000522),
    .R(sig00000002),
    .Q(sig00000517)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000438 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000523),
    .R(sig00000002),
    .Q(sig00000516)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000456 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004ad),
    .Q(sig00000524)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000457 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004ac),
    .Q(sig00000525)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000458 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004ab),
    .Q(sig00000526)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000459 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004aa),
    .Q(sig00000527)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000045a (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a9),
    .Q(sig00000528)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000045b (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a8),
    .Q(sig00000529)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000045c (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a7),
    .Q(sig0000052a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000045d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a6),
    .Q(sig0000052b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000045e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a5),
    .Q(sig0000052c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000045f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a4),
    .Q(sig0000052d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000460 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a3),
    .Q(sig0000052e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000461 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a2),
    .Q(sig0000052f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000462 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a1),
    .Q(sig00000530)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000463 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004a0),
    .Q(sig00000531)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000464 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000049f),
    .Q(sig00000532)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000465 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000049e),
    .Q(sig00000533)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000466 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000049d),
    .Q(sig00000534)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000467 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000524),
    .R(sig00000002),
    .Q(sig0000001b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000468 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000525),
    .R(sig00000002),
    .Q(sig0000001a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000469 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000526),
    .R(sig00000002),
    .Q(sig00000019)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000046a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000527),
    .R(sig00000002),
    .Q(sig00000018)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000046b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000528),
    .R(sig00000002),
    .Q(sig00000017)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000046c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000529),
    .R(sig00000002),
    .Q(sig00000016)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000046d (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000052a),
    .R(sig00000002),
    .Q(sig00000015)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000046e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000052b),
    .R(sig00000002),
    .Q(sig00000014)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000046f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000052c),
    .R(sig00000002),
    .Q(sig00000013)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000470 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000052d),
    .R(sig00000002),
    .Q(sig00000012)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000471 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000052e),
    .R(sig00000002),
    .Q(sig00000011)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000472 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000052f),
    .R(sig00000002),
    .Q(sig00000010)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000473 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000530),
    .R(sig00000002),
    .Q(sig0000000f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000474 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000531),
    .R(sig00000002),
    .Q(sig0000000e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000475 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000532),
    .R(sig00000002),
    .Q(sig0000000d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000476 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000533),
    .R(sig00000002),
    .Q(sig0000000c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000477 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000534),
    .R(sig00000002),
    .Q(sig0000000b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000478 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000049c),
    .Q(sig00000535)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000479 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000049b),
    .Q(sig00000536)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000047a (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000049a),
    .Q(sig00000537)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000047b (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000499),
    .Q(sig00000538)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000047c (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000498),
    .Q(sig00000539)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000047d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000497),
    .Q(sig0000053a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000047e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000496),
    .Q(sig0000053b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000047f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000495),
    .Q(sig0000053c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000480 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000494),
    .Q(sig0000053d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000481 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000493),
    .Q(sig0000053e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000482 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000492),
    .Q(sig0000053f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000483 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000491),
    .Q(sig00000540)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000484 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000490),
    .Q(sig00000541)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000485 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000048f),
    .Q(sig00000542)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000486 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000048e),
    .Q(sig00000543)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000487 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000048d),
    .Q(sig00000544)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000488 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000048c),
    .Q(sig00000545)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000489 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000535),
    .R(sig00000002),
    .Q(sig0000002c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000048a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000536),
    .R(sig00000002),
    .Q(sig0000002b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000048b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000537),
    .R(sig00000002),
    .Q(sig0000002a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000048c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000538),
    .R(sig00000002),
    .Q(sig00000029)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000048d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000539),
    .R(sig00000002),
    .Q(sig00000028)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000048e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000053a),
    .R(sig00000002),
    .Q(sig00000027)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000048f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000053b),
    .R(sig00000002),
    .Q(sig00000026)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000490 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000053c),
    .R(sig00000002),
    .Q(sig00000025)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000491 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000053d),
    .R(sig00000002),
    .Q(sig00000024)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000492 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000053e),
    .R(sig00000002),
    .Q(sig00000023)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000493 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000053f),
    .R(sig00000002),
    .Q(sig00000022)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000494 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000540),
    .R(sig00000002),
    .Q(sig00000021)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000495 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000541),
    .R(sig00000002),
    .Q(sig00000020)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000496 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000542),
    .R(sig00000002),
    .Q(sig0000001f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000497 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000543),
    .R(sig00000002),
    .Q(sig0000001e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000498 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000544),
    .R(sig00000002),
    .Q(sig0000001d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000499 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000545),
    .R(sig00000002),
    .Q(sig0000001c)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk0000049a (
    .I0(sig00000005),
    .I1(sig00000006),
    .O(sig0000006c)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000049b (
    .I0(sig00000100),
    .I1(sig0000006f),
    .O(sig0000029c)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000049c (
    .I0(sig0000006f),
    .I1(sig00000100),
    .O(sig0000029b)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000049d (
    .I0(sig00000100),
    .I1(sig0000000b),
    .I2(sig0000001c),
    .O(sig000002dd)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000049e (
    .I0(sig00000100),
    .I1(sig00000015),
    .I2(sig00000026),
    .O(sig000002e7)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000049f (
    .I0(sig00000100),
    .I1(sig00000016),
    .I2(sig00000027),
    .O(sig000002e8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a0 (
    .I0(sig00000100),
    .I1(sig00000017),
    .I2(sig00000028),
    .O(sig000002e9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a1 (
    .I0(sig00000100),
    .I1(sig00000018),
    .I2(sig00000029),
    .O(sig000002ea)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a2 (
    .I0(sig00000100),
    .I1(sig00000019),
    .I2(sig0000002a),
    .O(sig000002eb)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a3 (
    .I0(sig00000100),
    .I1(sig0000001a),
    .I2(sig0000002b),
    .O(sig000002ec)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a4 (
    .I0(sig00000100),
    .I1(sig0000001b),
    .I2(sig0000002c),
    .O(sig000002ed)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a5 (
    .I0(sig00000100),
    .I1(sig0000000c),
    .I2(sig0000001d),
    .O(sig000002de)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a6 (
    .I0(sig00000100),
    .I1(sig0000000d),
    .I2(sig0000001e),
    .O(sig000002df)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a7 (
    .I0(sig00000100),
    .I1(sig0000000e),
    .I2(sig0000001f),
    .O(sig000002e0)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a8 (
    .I0(sig00000100),
    .I1(sig0000000f),
    .I2(sig00000020),
    .O(sig000002e1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004a9 (
    .I0(sig00000100),
    .I1(sig00000010),
    .I2(sig00000021),
    .O(sig000002e2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004aa (
    .I0(sig00000100),
    .I1(sig00000011),
    .I2(sig00000022),
    .O(sig000002e3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004ab (
    .I0(sig00000100),
    .I1(sig00000012),
    .I2(sig00000023),
    .O(sig000002e4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004ac (
    .I0(sig00000100),
    .I1(sig00000013),
    .I2(sig00000024),
    .O(sig000002e5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004ad (
    .I0(sig00000100),
    .I1(sig00000014),
    .I2(sig00000025),
    .O(sig000002e6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004ae (
    .I0(sig00000100),
    .I1(sig0000001c),
    .I2(sig0000000b),
    .O(sig000002ee)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004af (
    .I0(sig00000100),
    .I1(sig00000026),
    .I2(sig00000015),
    .O(sig000002f8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b0 (
    .I0(sig00000100),
    .I1(sig00000027),
    .I2(sig00000016),
    .O(sig000002f9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b1 (
    .I0(sig00000100),
    .I1(sig00000028),
    .I2(sig00000017),
    .O(sig000002fa)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b2 (
    .I0(sig00000100),
    .I1(sig00000029),
    .I2(sig00000018),
    .O(sig000002fb)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b3 (
    .I0(sig00000100),
    .I1(sig0000002a),
    .I2(sig00000019),
    .O(sig000002fc)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b4 (
    .I0(sig00000100),
    .I1(sig0000002b),
    .I2(sig0000001a),
    .O(sig000002fd)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b5 (
    .I0(sig00000100),
    .I1(sig0000002c),
    .I2(sig0000001b),
    .O(sig000002fe)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b6 (
    .I0(sig00000100),
    .I1(sig0000001d),
    .I2(sig0000000c),
    .O(sig000002ef)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b7 (
    .I0(sig00000100),
    .I1(sig0000001e),
    .I2(sig0000000d),
    .O(sig000002f0)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b8 (
    .I0(sig00000100),
    .I1(sig0000001f),
    .I2(sig0000000e),
    .O(sig000002f1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004b9 (
    .I0(sig00000100),
    .I1(sig00000020),
    .I2(sig0000000f),
    .O(sig000002f2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004ba (
    .I0(sig00000100),
    .I1(sig00000021),
    .I2(sig00000010),
    .O(sig000002f3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004bb (
    .I0(sig00000100),
    .I1(sig00000022),
    .I2(sig00000011),
    .O(sig000002f4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004bc (
    .I0(sig00000100),
    .I1(sig00000023),
    .I2(sig00000012),
    .O(sig000002f5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004bd (
    .I0(sig00000100),
    .I1(sig00000024),
    .I2(sig00000013),
    .O(sig000002f6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004be (
    .I0(sig00000100),
    .I1(sig00000025),
    .I2(sig00000014),
    .O(sig000002f7)
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  blk000004bf (
    .I0(sig0000040c),
    .I1(sig0000040d),
    .I2(sig0000040f),
    .I3(sig0000040e),
    .O(sig00000442)
  );
  LUT4 #(
    .INIT ( 16'h1554 ))
  blk000004c0 (
    .I0(sig0000040c),
    .I1(sig0000040d),
    .I2(sig0000040f),
    .I3(sig0000040e),
    .O(sig00000440)
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  blk000004c1 (
    .I0(sig0000040d),
    .I1(sig0000040c),
    .I2(sig0000040f),
    .I3(sig0000040e),
    .O(sig00000444)
  );
  LUT4 #(
    .INIT ( 16'h0222 ))
  blk000004c2 (
    .I0(sig0000040d),
    .I1(sig0000040c),
    .I2(sig0000040f),
    .I3(sig0000040e),
    .O(sig00000443)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  blk000004c3 (
    .I0(sig0000040c),
    .I1(sig0000040f),
    .I2(sig0000040e),
    .I3(sig0000040d),
    .O(sig00000445)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004c4 (
    .I0(sig00000009),
    .I1(sig0000040f),
    .O(sig00000459)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004c5 (
    .I0(sig00000009),
    .I1(sig0000040e),
    .O(sig00000458)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004c6 (
    .I0(sig0000040d),
    .I1(sig00000009),
    .O(sig00000457)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004c7 (
    .I0(sig00000009),
    .I1(sig0000040c),
    .O(sig00000456)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004c8 (
    .I0(sig00000471),
    .I1(sig00000009),
    .O(sig0000043d)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000004c9 (
    .I0(sig0000040d),
    .I1(sig0000040c),
    .O(sig00000446)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000004ca (
    .I0(sig0000040e),
    .I1(sig0000040f),
    .O(sig00000447)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004cb (
    .I0(sig00000411),
    .I1(sig00000418),
    .O(sig00000448)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004cc (
    .I0(sig00000412),
    .I1(sig00000419),
    .O(sig00000449)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004cd (
    .I0(sig00000413),
    .I1(sig0000041a),
    .O(sig0000044a)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004ce (
    .I0(sig00000414),
    .I1(sig0000041b),
    .O(sig0000044b)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004cf (
    .I0(sig00000415),
    .I1(sig0000041c),
    .O(sig0000044c)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004d0 (
    .I0(sig00000416),
    .I1(sig0000041d),
    .O(sig0000044d)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000004d1 (
    .I0(sig00000417),
    .I1(sig0000041e),
    .O(sig0000044e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000004d2 (
    .I0(sig0000040c),
    .I1(sig0000040d),
    .I2(sig0000040e),
    .I3(sig0000040f),
    .O(sig0000045b)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  blk000004d3 (
    .I0(sig000004b8),
    .I1(sig0000048b),
    .I2(unload),
    .I3(sig00000009),
    .O(sig000004c0)
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  blk000004d4 (
    .I0(sig000004b9),
    .I1(sig00000009),
    .I2(sig000004b8),
    .I3(sig000004bb),
    .O(sig000004bd)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  blk000004d5 (
    .I0(sig000004b7),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig000004b8),
    .I4(sig000004bb),
    .O(sig000004bc)
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  blk000004d6 (
    .I0(sig000004ae),
    .I1(sig000004b7),
    .I2(sig00000003),
    .I3(start),
    .O(sig000004be)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk000004d7 (
    .I0(sig000004b7),
    .I1(sig000004ae),
    .I2(sig000004bb),
    .O(sig000004bf)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk000004d8 (
    .I0(sig000004b9),
    .I1(sig000004af),
    .I2(sig000004ba),
    .O(sig000004c1)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004d9 (
    .I0(sig000004b9),
    .I1(sig000004af),
    .O(sig000004c2)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  blk000004da (
    .I0(sig0000048b),
    .I1(sig000004b8),
    .I2(unload),
    .O(sig000004c3)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004db (
    .I0(sig00000003),
    .I1(start),
    .O(sig000004c4)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004dc (
    .I0(sig00000470),
    .I1(sig000004ba),
    .I2(sig000004bb),
    .I3(sig00000009),
    .O(sig000004d3)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004dd (
    .I0(sig000004ba),
    .I1(sig000004bb),
    .I2(sig0000046f),
    .I3(sig00000009),
    .O(sig000004d4)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004de (
    .I0(sig000004ba),
    .I1(sig000004bb),
    .I2(sig0000046e),
    .I3(sig00000009),
    .O(sig000004d5)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004df (
    .I0(sig000004ba),
    .I1(sig000004bb),
    .I2(sig0000046d),
    .I3(sig00000009),
    .O(sig000004d6)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004e0 (
    .I0(sig000004ba),
    .I1(sig000004bb),
    .I2(sig0000046c),
    .I3(sig00000009),
    .O(sig000004d7)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004e1 (
    .I0(sig000004ba),
    .I1(sig000004bb),
    .I2(sig0000046b),
    .I3(sig00000009),
    .O(sig000004d8)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004e2 (
    .I0(sig00000009),
    .I1(sig000004bb),
    .I2(sig000004ba),
    .I3(sig0000046a),
    .O(sig000004d9)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  blk000004e3 (
    .I0(sig0000046e),
    .I1(sig00000470),
    .I2(sig0000046f),
    .I3(sig0000046b),
    .I4(sig0000046c),
    .I5(sig0000046d),
    .O(sig000004e4)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk000004e4 (
    .I0(sig0000046e),
    .I1(sig00000470),
    .I2(sig0000046f),
    .I3(sig0000046b),
    .I4(sig0000046c),
    .I5(sig0000046d),
    .O(sig000004e5)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk000004e5 (
    .I0(sig00000470),
    .I1(sig0000046f),
    .I2(sig0000046e),
    .I3(sig0000046b),
    .I4(sig0000046c),
    .I5(sig0000046d),
    .O(sig000004e3)
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  blk000004e6 (
    .I0(sig00000003),
    .I1(sig000004b8),
    .I2(sig00000483),
    .O(sig000004d2)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  blk000004e7 (
    .I0(sig000004b7),
    .I1(sig00000515),
    .I2(sig00000513),
    .O(sig00000508)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000004e8 (
    .I0(sig000004b7),
    .I1(sig00000515),
    .I2(sig00000513),
    .O(sig00000007)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004e9 (
    .I0(NlwRenamedSig_OI_xn_index[0]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000472),
    .I3(sig00000003),
    .O(sig00000509)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004ea (
    .I0(NlwRenamedSig_OI_xn_index[2]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000472),
    .I3(sig00000003),
    .O(sig0000050b)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004eb (
    .I0(NlwRenamedSig_OI_xn_index[1]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000472),
    .I3(sig00000003),
    .O(sig0000050a)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004ec (
    .I0(NlwRenamedSig_OI_xn_index[3]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000472),
    .I3(sig00000003),
    .O(sig0000050c)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004ed (
    .I0(NlwRenamedSig_OI_xn_index[4]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000472),
    .I3(sig00000003),
    .O(sig0000050d)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004ee (
    .I0(NlwRenamedSig_OI_xn_index[5]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000472),
    .I3(sig00000003),
    .O(sig0000050e)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  blk000004ef (
    .I0(sig00000472),
    .I1(NlwRenamedSig_OI_xn_index[6]),
    .I2(sig00000003),
    .I3(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .O(sig0000050f)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004f0 (
    .I0(sig00000009),
    .I1(sig00000513),
    .O(sig00000510)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004f1 (
    .I0(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I1(sig00000472),
    .O(sig00000511)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000004f2 (
    .I0(sig0000046a),
    .O(sig00000546)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000004f3 (
    .I0(sig0000046a),
    .O(sig00000547)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000004f4 (
    .I0(sig0000046a),
    .O(sig00000548)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004f5 (
    .I0(sig0000000a),
    .I1(sig0000006f),
    .I2(sig0000006e),
    .O(sig00000549)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk000004f6 (
    .C(clk),
    .D(sig00000549),
    .S(sig00000002),
    .Q(sig0000006f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000004f7 (
    .I0(fwd_inv_we),
    .I1(sig0000006e),
    .I2(fwd_inv),
    .O(sig0000054a)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk000004f8 (
    .C(clk),
    .D(sig0000054a),
    .S(sig00000002),
    .Q(sig0000006e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004f9 (
    .C(clk),
    .D(sig0000054b),
    .Q(sig0000043a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004fa (
    .C(clk),
    .D(sig0000054c),
    .Q(sig00000430)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004fb (
    .C(clk),
    .D(sig0000054d),
    .Q(sig00000483)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004fc (
    .C(clk),
    .D(sig0000054e),
    .Q(sig00000434)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004fd (
    .C(clk),
    .D(sig0000054f),
    .Q(sig000004ae)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004fe (
    .C(clk),
    .D(sig00000550),
    .Q(sig00000512)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004ff (
    .C(clk),
    .D(sig00000551),
    .Q(sig00000004)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000500 (
    .C(clk),
    .D(sig00000552),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i )
  );
  LUT4 #(
    .INIT ( 16'hA8F8 ))
  blk00000501 (
    .I0(sig00000003),
    .I1(start),
    .I2(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I3(sig00000472),
    .O(sig00000552)
  );
  LUT4 #(
    .INIT ( 16'h5444 ))
  blk00000502 (
    .I0(sig0000043c),
    .I1(sig00000434),
    .I2(sig000004b9),
    .I3(sig00000473),
    .O(sig0000054e)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000503 (
    .I0(sig00000514),
    .I1(sig00000512),
    .O(sig0000054f)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000504 (
    .I0(sig00000515),
    .I1(sig000004b7),
    .O(sig00000550)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000505 (
    .I0(sig00000471),
    .I1(sig000004bb),
    .I2(sig00000004),
    .O(sig00000551)
  );
  LUT4 #(
    .INIT ( 16'h1454 ))
  blk00000506 (
    .I0(sig0000040c),
    .I1(sig0000040e),
    .I2(sig0000040d),
    .I3(sig0000040f),
    .O(sig00000441)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000507 (
    .I0(sig0000047a),
    .I1(sig00000470),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig0000002d)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000508 (
    .I0(sig00000478),
    .I1(sig0000046e),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig0000002f)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000509 (
    .I0(sig00000479),
    .I1(sig0000046f),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig0000002e)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk0000050a (
    .I0(sig00000477),
    .I1(sig0000046d),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig00000030)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk0000050b (
    .I0(sig00000476),
    .I1(sig0000046c),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig00000031)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk0000050c (
    .I0(sig00000475),
    .I1(sig0000046b),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig00000032)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk0000050d (
    .I0(sig00000474),
    .I1(sig0000046a),
    .I2(sig000004b9),
    .I3(sig00000009),
    .I4(sig000004bd),
    .I5(sig000004bc),
    .O(sig00000033)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk0000050e (
    .I0(sig00000426),
    .I1(sig00000009),
    .I2(sig00000483),
    .O(sig0000054d)
  );
  LUT4 #(
    .INIT ( 16'h5444 ))
  blk0000050f (
    .I0(sig00000426),
    .I1(sig00000009),
    .I2(sig00000483),
    .I3(sig00000471),
    .O(sig0000054b)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000510 (
    .I0(sig0000048a),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig00000481),
    .O(sig00000034)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000511 (
    .I0(sig00000488),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig0000047f),
    .O(sig00000036)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000512 (
    .I0(sig00000489),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig00000480),
    .O(sig00000035)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000513 (
    .I0(sig00000487),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig0000047e),
    .O(sig00000037)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000514 (
    .I0(sig00000486),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig0000047d),
    .O(sig00000038)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000515 (
    .I0(sig00000485),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig0000047c),
    .O(sig00000039)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000516 (
    .I0(sig00000484),
    .I1(sig000004b9),
    .I2(sig00000009),
    .I3(sig0000047b),
    .O(sig0000003a)
  );
  LUT5 #(
    .INIT ( 32'h10101000 ))
  blk00000517 (
    .I0(sig000004b9),
    .I1(sig00000009),
    .I2(sig00000427),
    .I3(sig000004b8),
    .I4(sig000004bb),
    .O(sig0000054c)
  );
  INV   blk00000518 (
    .I(sig00000192),
    .O(sig0000006d)
  );
  INV   blk00000519 (
    .I(sig00000470),
    .O(sig0000043f)
  );
  RAMB18E1 #(
    .INITP_00 ( 256'h5555555555555554000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h55F651344C40471D41CE3C5736BA30FC2B1F25281F1A18F912C80C8C06480000 ),
    .INIT_01 ( 256'h7FD97F627E9D7D8A7C2A7A7D7885764273B670E36DCA6A6E66D062F25ED75A82 ),
    .INIT_02 ( 256'h5ED762F266D06A6E6DCA70E373B6764278857A7D7C2A7D8A7E9D7F627FD98000 ),
    .INIT_03 ( 256'h06480C8C12C818F91F1A25282B1F30FC36BA3C5741CE471D4C40513455F65A82 ),
    .INIT_04 ( 256'h5ED762F266D06A6E6DCA70E373B6764278857A7D7C2A7D8A7E9D7F627FD98000 ),
    .INIT_05 ( 256'h06480C8C12C818F91F1A25282B1F30FC36BA3C5741CE471D4C40513455F65A82 ),
    .INIT_06 ( 256'hAA0AAECCB3C0B8E3BE32C3A9C946CF04D4E1DAD8E0E6E707ED38F374F9B80000 ),
    .INIT_07 ( 256'h8027809E8163827683D68583877B89BE8C4A8F1D9236959299309D0EA129A57E ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DOA_REG ( 1 ),
    .DOB_REG ( 1 ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 0 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .RSTREG_PRIORITY_A ( "RSTREG" ),
    .RSTREG_PRIORITY_B ( "RSTREG" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "7SERIES" ),
    .INIT_FILE ( "NONE" ))
  blk0000051a (
    .CLKARDCLK(clk),
    .CLKBWRCLK(clk),
    .ENARDEN(sig000004b0),
    .ENBWREN(sig000004b0),
    .REGCEAREGCE(sig000004b0),
    .REGCEB(sig000004b0),
    .RSTRAMARSTRAM(sig00000002),
    .RSTRAMB(sig00000002),
    .RSTREGARSTREG(sig00000002),
    .RSTREGB(sig00000002),
    .ADDRARDADDR({sig00000002, sig00000002, sig00000002, sig00000002, sig000004b6, sig000004b5, sig000004b4, sig000004b3, sig000004b2, sig000004b1, 
sig00000001, sig00000001, sig00000001, sig00000001}),
    .ADDRBWRADDR({sig00000002, sig00000002, sig00000002, sig00000001, sig000004b6, sig000004b5, sig000004b4, sig000004b3, sig000004b2, sig000004b1, 
sig00000001, sig00000001, sig00000001, sig00000001}),
    .DIADI({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .DIBDI({\NLW_blk0000051a_DIBDI<15>_UNCONNECTED , \NLW_blk0000051a_DIBDI<14>_UNCONNECTED , \NLW_blk0000051a_DIBDI<13>_UNCONNECTED , 
\NLW_blk0000051a_DIBDI<12>_UNCONNECTED , \NLW_blk0000051a_DIBDI<11>_UNCONNECTED , \NLW_blk0000051a_DIBDI<10>_UNCONNECTED , 
\NLW_blk0000051a_DIBDI<9>_UNCONNECTED , \NLW_blk0000051a_DIBDI<8>_UNCONNECTED , \NLW_blk0000051a_DIBDI<7>_UNCONNECTED , 
\NLW_blk0000051a_DIBDI<6>_UNCONNECTED , \NLW_blk0000051a_DIBDI<5>_UNCONNECTED , \NLW_blk0000051a_DIBDI<4>_UNCONNECTED , 
\NLW_blk0000051a_DIBDI<3>_UNCONNECTED , \NLW_blk0000051a_DIBDI<2>_UNCONNECTED , \NLW_blk0000051a_DIBDI<1>_UNCONNECTED , 
\NLW_blk0000051a_DIBDI<0>_UNCONNECTED }),
    .DIPADIP({sig00000002, sig00000002}),
    .DIPBDIP({\NLW_blk0000051a_DIPBDIP<1>_UNCONNECTED , \NLW_blk0000051a_DIPBDIP<0>_UNCONNECTED }),
    .DOADO({sig000003e4, sig000003e5, sig000003e6, sig000003e7, sig000003e8, sig000003e9, sig000003ea, sig000003eb, sig000003ec, sig000003ed, 
sig000003ee, sig000003ef, sig000003f0, sig000003f1, sig000003f2, sig000003f3}),
    .DOBDO({sig000003f5, sig000003f6, sig000003f7, sig000003f8, sig000003f9, sig000003fa, sig000003fb, sig000003fc, sig000003fd, sig000003fe, 
sig000003ff, sig00000400, sig00000401, sig00000402, sig00000403, sig00000404}),
    .DOPADOP({\NLW_blk0000051a_DOPADOP<1>_UNCONNECTED , sig000003e3}),
    .DOPBDOP({\NLW_blk0000051a_DOPBDOP<1>_UNCONNECTED , sig000003f4}),
    .WEA({sig00000002, sig00000002}),
    .WEBWE({sig00000002, sig00000002, sig00000002, sig00000002})
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000051b (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000470),
    .Q(sig00000553),
    .Q15(NLW_blk0000051b_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000553),
    .Q(sig00000484)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000051d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000029e),
    .Q(sig00000554),
    .Q15(NLW_blk0000051d_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000554),
    .Q(sig00000269)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000051f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000100),
    .Q(sig00000555),
    .Q15(NLW_blk0000051f_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000520 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000555),
    .Q(sig0000032f)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000521 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046f),
    .Q(sig00000556),
    .Q15(NLW_blk00000521_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000522 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000556),
    .Q(sig00000485)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000523 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046e),
    .Q(sig00000557),
    .Q15(NLW_blk00000523_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000524 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000557),
    .Q(sig00000486)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000525 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046d),
    .Q(sig00000558),
    .Q15(NLW_blk00000525_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000526 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000558),
    .Q(sig00000487)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000527 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046c),
    .Q(sig00000559),
    .Q15(NLW_blk00000527_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000528 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000559),
    .Q(sig00000488)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000529 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046b),
    .Q(sig0000055a),
    .Q15(NLW_blk00000529_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000055a),
    .Q(sig00000489)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000052b (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000046a),
    .Q(sig0000055b),
    .Q15(NLW_blk0000052b_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000055b),
    .Q(sig0000048a)
  );
  DSP48E #(
    .ACASCREG ( 1 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 1 ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .MREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "NONE" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk0000052d (
    .CLK(clk),
    .PATTERNBDETECT(NLW_blk0000052d_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .MULTSIGNOUT(NLW_blk0000052d_MULTSIGNOUT_UNCONNECTED),
    .CEC(sig00000001),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000001),
    .RSTCTRL(sig00000002),
    .CEP(sig00000001),
    .CARRYCASCOUT(NLW_blk0000052d_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk0000052d_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_blk0000052d_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CEALUMODE(sig00000001),
    .CEA2(sig00000001),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .CEMULTCARRYIN(sig00000002),
    .OVERFLOW(NLW_blk0000052d_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(sig00000002),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTP(sig00000002),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002}),
    .OPMODE({sig00000002, sig00000001, sig00000001, sig00000002, sig00000002, sig00000001, sig00000001}),
    .ALUMODE({sig00000002, sig00000002, sig00000161, sig00000161}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000191, sig00000191, sig00000191, 
sig00000190, sig0000018f, sig0000018e, sig0000018d, sig0000018c, sig0000018b, sig0000018a, sig00000189, sig00000188, sig00000187, sig00000186, 
sig00000185, sig00000184, sig00000183, sig00000182, sig00000181, sig00000180, sig0000017f, sig0000017e, sig0000017d, sig0000017c, sig0000017b, 
sig0000017a, sig00000002, sig00000002, sig00000002}),
    .B({sig00000250, sig0000024f, sig0000024e, sig0000024d, sig0000024c, sig0000024b, sig0000024a, sig00000249, sig00000248, sig00000247, sig00000246
, sig00000245, sig00000244, sig00000243, sig00000242, sig00000241, sig00000240, sig0000023f}),
    .P({\NLW_blk0000052d_P<47>_UNCONNECTED , \NLW_blk0000052d_P<46>_UNCONNECTED , \NLW_blk0000052d_P<45>_UNCONNECTED , 
\NLW_blk0000052d_P<44>_UNCONNECTED , \NLW_blk0000052d_P<43>_UNCONNECTED , \NLW_blk0000052d_P<42>_UNCONNECTED , \NLW_blk0000052d_P<41>_UNCONNECTED , 
\NLW_blk0000052d_P<40>_UNCONNECTED , \NLW_blk0000052d_P<39>_UNCONNECTED , \NLW_blk0000052d_P<38>_UNCONNECTED , \NLW_blk0000052d_P<37>_UNCONNECTED , 
\NLW_blk0000052d_P<36>_UNCONNECTED , \NLW_blk0000052d_P<35>_UNCONNECTED , \NLW_blk0000052d_P<34>_UNCONNECTED , \NLW_blk0000052d_P<33>_UNCONNECTED , 
\NLW_blk0000052d_P<32>_UNCONNECTED , \NLW_blk0000052d_P<31>_UNCONNECTED , \NLW_blk0000052d_P<30>_UNCONNECTED , \NLW_blk0000052d_P<29>_UNCONNECTED , 
\NLW_blk0000052d_P<28>_UNCONNECTED , \NLW_blk0000052d_P<27>_UNCONNECTED , sig00000160, sig0000015f, sig0000015e, sig0000015d, sig0000015c, sig0000015b
, sig0000015a, sig00000159, sig00000158, sig00000157, sig00000156, sig00000155, sig00000154, sig00000153, sig00000152, sig00000151, sig00000150, 
sig0000014f, sig0000014e, sig0000014d, sig0000014c, sig0000014b, sig0000014a, sig00000149, \NLW_blk0000052d_P<2>_UNCONNECTED , 
\NLW_blk0000052d_P<1>_UNCONNECTED , \NLW_blk0000052d_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig0000025a, sig0000025a, sig00000259, 
sig00000258, sig00000257, sig00000256, sig00000255, sig00000254, sig00000253, sig00000252, sig00000251}),
    .PCOUT({sig0000003b, sig0000003c, sig0000003d, sig0000003e, sig0000003f, sig00000040, sig00000041, sig00000042, sig00000043, sig00000044, 
sig00000045, sig00000046, sig00000047, sig00000048, sig00000049, sig0000004a, sig0000004b, sig0000004c, sig0000004d, sig0000004e, sig0000004f, 
sig00000050, sig00000051, sig00000052, sig00000053, sig00000054, sig00000055, sig00000056, sig00000057, sig00000058, sig00000059, sig0000005a, 
sig0000005b, sig0000005c, sig0000005d, sig0000005e, sig0000005f, sig00000060, sig00000061, sig00000062, sig00000063, sig00000064, sig00000065, 
sig00000066, sig00000067, sig00000068, sig00000069, sig0000006a}),
    .ACOUT({\NLW_blk0000052d_ACOUT<29>_UNCONNECTED , \NLW_blk0000052d_ACOUT<28>_UNCONNECTED , \NLW_blk0000052d_ACOUT<27>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<26>_UNCONNECTED , \NLW_blk0000052d_ACOUT<25>_UNCONNECTED , \NLW_blk0000052d_ACOUT<24>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<23>_UNCONNECTED , \NLW_blk0000052d_ACOUT<22>_UNCONNECTED , \NLW_blk0000052d_ACOUT<21>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<20>_UNCONNECTED , \NLW_blk0000052d_ACOUT<19>_UNCONNECTED , \NLW_blk0000052d_ACOUT<18>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<17>_UNCONNECTED , \NLW_blk0000052d_ACOUT<16>_UNCONNECTED , \NLW_blk0000052d_ACOUT<15>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<14>_UNCONNECTED , \NLW_blk0000052d_ACOUT<13>_UNCONNECTED , \NLW_blk0000052d_ACOUT<12>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<11>_UNCONNECTED , \NLW_blk0000052d_ACOUT<10>_UNCONNECTED , \NLW_blk0000052d_ACOUT<9>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<8>_UNCONNECTED , \NLW_blk0000052d_ACOUT<7>_UNCONNECTED , \NLW_blk0000052d_ACOUT<6>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<5>_UNCONNECTED , \NLW_blk0000052d_ACOUT<4>_UNCONNECTED , \NLW_blk0000052d_ACOUT<3>_UNCONNECTED , 
\NLW_blk0000052d_ACOUT<2>_UNCONNECTED , \NLW_blk0000052d_ACOUT<1>_UNCONNECTED , \NLW_blk0000052d_ACOUT<0>_UNCONNECTED }),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYOUT({\NLW_blk0000052d_CARRYOUT<3>_UNCONNECTED , \NLW_blk0000052d_CARRYOUT<2>_UNCONNECTED , \NLW_blk0000052d_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk0000052d_CARRYOUT<0>_UNCONNECTED }),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCOUT({\NLW_blk0000052d_BCOUT<17>_UNCONNECTED , \NLW_blk0000052d_BCOUT<16>_UNCONNECTED , \NLW_blk0000052d_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000052d_BCOUT<14>_UNCONNECTED , \NLW_blk0000052d_BCOUT<13>_UNCONNECTED , \NLW_blk0000052d_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000052d_BCOUT<11>_UNCONNECTED , \NLW_blk0000052d_BCOUT<10>_UNCONNECTED , \NLW_blk0000052d_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000052d_BCOUT<8>_UNCONNECTED , \NLW_blk0000052d_BCOUT<7>_UNCONNECTED , \NLW_blk0000052d_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000052d_BCOUT<5>_UNCONNECTED , \NLW_blk0000052d_BCOUT<4>_UNCONNECTED , \NLW_blk0000052d_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000052d_BCOUT<2>_UNCONNECTED , \NLW_blk0000052d_BCOUT<1>_UNCONNECTED , \NLW_blk0000052d_BCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002})
  );
  DSP48E #(
    .ACASCREG ( 1 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 1 ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .MREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "NONE" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk0000052e (
    .CLK(clk),
    .PATTERNBDETECT(NLW_blk0000052e_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .MULTSIGNOUT(NLW_blk0000052e_MULTSIGNOUT_UNCONNECTED),
    .CEC(sig00000001),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000001),
    .RSTCTRL(sig00000002),
    .CEP(sig00000001),
    .CARRYCASCOUT(NLW_blk0000052e_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk0000052e_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_blk0000052e_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CEALUMODE(sig00000001),
    .CEA2(sig00000001),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .CEMULTCARRYIN(sig00000002),
    .OVERFLOW(NLW_blk0000052e_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(sig00000002),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTP(sig00000002),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002}),
    .OPMODE({sig00000002, sig00000001, sig00000001, sig00000002, sig00000002, sig00000001, sig00000001}),
    .PCIN({sig0000003b, sig0000003c, sig0000003d, sig0000003e, sig0000003f, sig00000040, sig00000041, sig00000042, sig00000043, sig00000044, 
sig00000045, sig00000046, sig00000047, sig00000048, sig00000049, sig0000004a, sig0000004b, sig0000004c, sig0000004d, sig0000004e, sig0000004f, 
sig00000050, sig00000051, sig00000052, sig00000053, sig00000054, sig00000055, sig00000056, sig00000057, sig00000058, sig00000059, sig0000005a, 
sig0000005b, sig0000005c, sig0000005d, sig0000005e, sig0000005f, sig00000060, sig00000061, sig00000062, sig00000063, sig00000064, sig00000065, 
sig00000066, sig00000067, sig00000068, sig00000069, sig0000006a}),
    .ALUMODE({sig00000002, sig00000002, sig00000161, sig00000161}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000179, sig00000179, sig00000179, 
sig00000178, sig00000177, sig00000176, sig00000175, sig00000174, sig00000173, sig00000172, sig00000171, sig00000170, sig0000016f, sig0000016e, 
sig0000016d, sig0000016c, sig0000016b, sig0000016a, sig00000169, sig00000168, sig00000167, sig00000166, sig00000165, sig00000164, sig00000163, 
sig00000162, sig00000002, sig00000002, sig00000002}),
    .B({sig00000234, sig00000233, sig00000232, sig00000231, sig00000230, sig0000022f, sig0000022e, sig0000022d, sig0000022c, sig0000022b, sig0000022a
, sig00000229, sig00000228, sig00000227, sig00000226, sig00000225, sig00000224, sig00000223}),
    .P({\NLW_blk0000052e_P<47>_UNCONNECTED , \NLW_blk0000052e_P<46>_UNCONNECTED , \NLW_blk0000052e_P<45>_UNCONNECTED , 
\NLW_blk0000052e_P<44>_UNCONNECTED , \NLW_blk0000052e_P<43>_UNCONNECTED , \NLW_blk0000052e_P<42>_UNCONNECTED , \NLW_blk0000052e_P<41>_UNCONNECTED , 
\NLW_blk0000052e_P<40>_UNCONNECTED , \NLW_blk0000052e_P<39>_UNCONNECTED , \NLW_blk0000052e_P<38>_UNCONNECTED , \NLW_blk0000052e_P<37>_UNCONNECTED , 
\NLW_blk0000052e_P<36>_UNCONNECTED , \NLW_blk0000052e_P<35>_UNCONNECTED , \NLW_blk0000052e_P<34>_UNCONNECTED , \NLW_blk0000052e_P<33>_UNCONNECTED , 
\NLW_blk0000052e_P<32>_UNCONNECTED , \NLW_blk0000052e_P<31>_UNCONNECTED , \NLW_blk0000052e_P<30>_UNCONNECTED , \NLW_blk0000052e_P<29>_UNCONNECTED , 
\NLW_blk0000052e_P<28>_UNCONNECTED , \NLW_blk0000052e_P<27>_UNCONNECTED , sig00000148, sig00000147, sig00000146, sig00000145, sig00000144, sig00000143
, sig00000142, sig00000141, sig00000140, sig0000013f, sig0000013e, sig0000013d, sig0000013c, sig0000013b, sig0000013a, sig00000139, sig00000138, 
sig00000137, sig00000136, sig00000135, sig00000134, sig00000133, sig00000132, sig00000131, \NLW_blk0000052e_P<2>_UNCONNECTED , 
\NLW_blk0000052e_P<1>_UNCONNECTED , \NLW_blk0000052e_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig0000023e, sig0000023e, sig0000023d, 
sig0000023c, sig0000023b, sig0000023a, sig00000239, sig00000238, sig00000237, sig00000236, sig00000235}),
    .ACOUT({\NLW_blk0000052e_ACOUT<29>_UNCONNECTED , \NLW_blk0000052e_ACOUT<28>_UNCONNECTED , \NLW_blk0000052e_ACOUT<27>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<26>_UNCONNECTED , \NLW_blk0000052e_ACOUT<25>_UNCONNECTED , \NLW_blk0000052e_ACOUT<24>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<23>_UNCONNECTED , \NLW_blk0000052e_ACOUT<22>_UNCONNECTED , \NLW_blk0000052e_ACOUT<21>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<20>_UNCONNECTED , \NLW_blk0000052e_ACOUT<19>_UNCONNECTED , \NLW_blk0000052e_ACOUT<18>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<17>_UNCONNECTED , \NLW_blk0000052e_ACOUT<16>_UNCONNECTED , \NLW_blk0000052e_ACOUT<15>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<14>_UNCONNECTED , \NLW_blk0000052e_ACOUT<13>_UNCONNECTED , \NLW_blk0000052e_ACOUT<12>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<11>_UNCONNECTED , \NLW_blk0000052e_ACOUT<10>_UNCONNECTED , \NLW_blk0000052e_ACOUT<9>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<8>_UNCONNECTED , \NLW_blk0000052e_ACOUT<7>_UNCONNECTED , \NLW_blk0000052e_ACOUT<6>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<5>_UNCONNECTED , \NLW_blk0000052e_ACOUT<4>_UNCONNECTED , \NLW_blk0000052e_ACOUT<3>_UNCONNECTED , 
\NLW_blk0000052e_ACOUT<2>_UNCONNECTED , \NLW_blk0000052e_ACOUT<1>_UNCONNECTED , \NLW_blk0000052e_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk0000052e_CARRYOUT<3>_UNCONNECTED , \NLW_blk0000052e_CARRYOUT<2>_UNCONNECTED , \NLW_blk0000052e_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk0000052e_CARRYOUT<0>_UNCONNECTED }),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCOUT({\NLW_blk0000052e_BCOUT<17>_UNCONNECTED , \NLW_blk0000052e_BCOUT<16>_UNCONNECTED , \NLW_blk0000052e_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000052e_BCOUT<14>_UNCONNECTED , \NLW_blk0000052e_BCOUT<13>_UNCONNECTED , \NLW_blk0000052e_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000052e_BCOUT<11>_UNCONNECTED , \NLW_blk0000052e_BCOUT<10>_UNCONNECTED , \NLW_blk0000052e_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000052e_BCOUT<8>_UNCONNECTED , \NLW_blk0000052e_BCOUT<7>_UNCONNECTED , \NLW_blk0000052e_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000052e_BCOUT<5>_UNCONNECTED , \NLW_blk0000052e_BCOUT<4>_UNCONNECTED , \NLW_blk0000052e_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000052e_BCOUT<2>_UNCONNECTED , \NLW_blk0000052e_BCOUT<1>_UNCONNECTED , \NLW_blk0000052e_BCOUT<0>_UNCONNECTED }),
    .PCOUT({\NLW_blk0000052e_PCOUT<47>_UNCONNECTED , \NLW_blk0000052e_PCOUT<46>_UNCONNECTED , \NLW_blk0000052e_PCOUT<45>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<44>_UNCONNECTED , \NLW_blk0000052e_PCOUT<43>_UNCONNECTED , \NLW_blk0000052e_PCOUT<42>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<41>_UNCONNECTED , \NLW_blk0000052e_PCOUT<40>_UNCONNECTED , \NLW_blk0000052e_PCOUT<39>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<38>_UNCONNECTED , \NLW_blk0000052e_PCOUT<37>_UNCONNECTED , \NLW_blk0000052e_PCOUT<36>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<35>_UNCONNECTED , \NLW_blk0000052e_PCOUT<34>_UNCONNECTED , \NLW_blk0000052e_PCOUT<33>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<32>_UNCONNECTED , \NLW_blk0000052e_PCOUT<31>_UNCONNECTED , \NLW_blk0000052e_PCOUT<30>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<29>_UNCONNECTED , \NLW_blk0000052e_PCOUT<28>_UNCONNECTED , \NLW_blk0000052e_PCOUT<27>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<26>_UNCONNECTED , \NLW_blk0000052e_PCOUT<25>_UNCONNECTED , \NLW_blk0000052e_PCOUT<24>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<23>_UNCONNECTED , \NLW_blk0000052e_PCOUT<22>_UNCONNECTED , \NLW_blk0000052e_PCOUT<21>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<20>_UNCONNECTED , \NLW_blk0000052e_PCOUT<19>_UNCONNECTED , \NLW_blk0000052e_PCOUT<18>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<17>_UNCONNECTED , \NLW_blk0000052e_PCOUT<16>_UNCONNECTED , \NLW_blk0000052e_PCOUT<15>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<14>_UNCONNECTED , \NLW_blk0000052e_PCOUT<13>_UNCONNECTED , \NLW_blk0000052e_PCOUT<12>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<11>_UNCONNECTED , \NLW_blk0000052e_PCOUT<10>_UNCONNECTED , \NLW_blk0000052e_PCOUT<9>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<8>_UNCONNECTED , \NLW_blk0000052e_PCOUT<7>_UNCONNECTED , \NLW_blk0000052e_PCOUT<6>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<5>_UNCONNECTED , \NLW_blk0000052e_PCOUT<4>_UNCONNECTED , \NLW_blk0000052e_PCOUT<3>_UNCONNECTED , 
\NLW_blk0000052e_PCOUT<2>_UNCONNECTED , \NLW_blk0000052e_PCOUT<1>_UNCONNECTED , \NLW_blk0000052e_PCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002})
  );
  DSP48E #(
    .ACASCREG ( 1 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 1 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT_S" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk0000052f (
    .CLK(clk),
    .PATTERNBDETECT(NLW_blk0000052f_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .MULTSIGNOUT(NLW_blk0000052f_MULTSIGNOUT_UNCONNECTED),
    .CEC(sig00000002),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000001),
    .RSTCTRL(sig00000002),
    .CEP(sig00000001),
    .CARRYCASCOUT(NLW_blk0000052f_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk0000052f_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_blk0000052f_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CEALUMODE(sig00000001),
    .CEA2(sig00000001),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .CEMULTCARRYIN(sig00000002),
    .OVERFLOW(NLW_blk0000052f_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(sig00000001),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTP(sig00000002),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001}),
    .ALUMODE({sig00000002, sig00000002, sig0000026a, sig0000026a}),
    .B({sig000002c0, sig000002c0, sig000002bf, sig000002be, sig000002bd, sig000002bc, sig000002bb, sig000002ba, sig000002b9, sig000002b8, sig000002b7
, sig000002b6, sig000002b5, sig000002b4, sig000002b3, sig000002b2, sig000002b1, sig000002b0}),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig0000032e, sig0000032e, sig0000032d, sig0000032c, sig0000032b, sig0000032a
, sig00000329, sig00000328, sig00000327, sig00000326, sig00000325, sig00000324, sig00000323, sig00000322, sig00000321, sig00000320, sig0000031f, 
sig0000031e, sig0000031d, sig0000031c, sig0000031b, sig0000031a, sig00000319, sig00000318, sig00000317}),
    .PCOUT({sig0000026b, sig0000026c, sig0000026d, sig0000026e, sig0000026f, sig00000270, sig00000271, sig00000272, sig00000273, sig00000274, 
sig00000275, sig00000276, sig00000277, sig00000278, sig00000279, sig0000027a, sig0000027b, sig0000027c, sig0000027d, sig0000027e, sig0000027f, 
sig00000280, sig00000281, sig00000282, sig00000283, sig00000284, sig00000285, sig00000286, sig00000287, sig00000288, sig00000289, sig0000028a, 
sig0000028b, sig0000028c, sig0000028d, sig0000028e, sig0000028f, sig00000290, sig00000291, sig00000292, sig00000293, sig00000294, sig00000295, 
sig00000296, sig00000297, sig00000298, sig00000299, sig0000029a}),
    .ACOUT({\NLW_blk0000052f_ACOUT<29>_UNCONNECTED , \NLW_blk0000052f_ACOUT<28>_UNCONNECTED , \NLW_blk0000052f_ACOUT<27>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<26>_UNCONNECTED , \NLW_blk0000052f_ACOUT<25>_UNCONNECTED , \NLW_blk0000052f_ACOUT<24>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<23>_UNCONNECTED , \NLW_blk0000052f_ACOUT<22>_UNCONNECTED , \NLW_blk0000052f_ACOUT<21>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<20>_UNCONNECTED , \NLW_blk0000052f_ACOUT<19>_UNCONNECTED , \NLW_blk0000052f_ACOUT<18>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<17>_UNCONNECTED , \NLW_blk0000052f_ACOUT<16>_UNCONNECTED , \NLW_blk0000052f_ACOUT<15>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<14>_UNCONNECTED , \NLW_blk0000052f_ACOUT<13>_UNCONNECTED , \NLW_blk0000052f_ACOUT<12>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<11>_UNCONNECTED , \NLW_blk0000052f_ACOUT<10>_UNCONNECTED , \NLW_blk0000052f_ACOUT<9>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<8>_UNCONNECTED , \NLW_blk0000052f_ACOUT<7>_UNCONNECTED , \NLW_blk0000052f_ACOUT<6>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<5>_UNCONNECTED , \NLW_blk0000052f_ACOUT<4>_UNCONNECTED , \NLW_blk0000052f_ACOUT<3>_UNCONNECTED , 
\NLW_blk0000052f_ACOUT<2>_UNCONNECTED , \NLW_blk0000052f_ACOUT<1>_UNCONNECTED , \NLW_blk0000052f_ACOUT<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig00000001, sig00000001, sig00000002, sig00000001, sig00000002, sig00000001}),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYOUT({\NLW_blk0000052f_CARRYOUT<3>_UNCONNECTED , \NLW_blk0000052f_CARRYOUT<2>_UNCONNECTED , \NLW_blk0000052f_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk0000052f_CARRYOUT<0>_UNCONNECTED }),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCOUT({\NLW_blk0000052f_BCOUT<17>_UNCONNECTED , \NLW_blk0000052f_BCOUT<16>_UNCONNECTED , \NLW_blk0000052f_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000052f_BCOUT<14>_UNCONNECTED , \NLW_blk0000052f_BCOUT<13>_UNCONNECTED , \NLW_blk0000052f_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000052f_BCOUT<11>_UNCONNECTED , \NLW_blk0000052f_BCOUT<10>_UNCONNECTED , \NLW_blk0000052f_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000052f_BCOUT<8>_UNCONNECTED , \NLW_blk0000052f_BCOUT<7>_UNCONNECTED , \NLW_blk0000052f_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000052f_BCOUT<5>_UNCONNECTED , \NLW_blk0000052f_BCOUT<4>_UNCONNECTED , \NLW_blk0000052f_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000052f_BCOUT<2>_UNCONNECTED , \NLW_blk0000052f_BCOUT<1>_UNCONNECTED , \NLW_blk0000052f_BCOUT<0>_UNCONNECTED }),
    .P({\NLW_blk0000052f_P<47>_UNCONNECTED , \NLW_blk0000052f_P<46>_UNCONNECTED , \NLW_blk0000052f_P<45>_UNCONNECTED , 
\NLW_blk0000052f_P<44>_UNCONNECTED , \NLW_blk0000052f_P<43>_UNCONNECTED , \NLW_blk0000052f_P<42>_UNCONNECTED , \NLW_blk0000052f_P<41>_UNCONNECTED , 
\NLW_blk0000052f_P<40>_UNCONNECTED , \NLW_blk0000052f_P<39>_UNCONNECTED , \NLW_blk0000052f_P<38>_UNCONNECTED , \NLW_blk0000052f_P<37>_UNCONNECTED , 
\NLW_blk0000052f_P<36>_UNCONNECTED , \NLW_blk0000052f_P<35>_UNCONNECTED , \NLW_blk0000052f_P<34>_UNCONNECTED , \NLW_blk0000052f_P<33>_UNCONNECTED , 
\NLW_blk0000052f_P<32>_UNCONNECTED , \NLW_blk0000052f_P<31>_UNCONNECTED , \NLW_blk0000052f_P<30>_UNCONNECTED , \NLW_blk0000052f_P<29>_UNCONNECTED , 
\NLW_blk0000052f_P<28>_UNCONNECTED , \NLW_blk0000052f_P<27>_UNCONNECTED , \NLW_blk0000052f_P<26>_UNCONNECTED , \NLW_blk0000052f_P<25>_UNCONNECTED , 
\NLW_blk0000052f_P<24>_UNCONNECTED , \NLW_blk0000052f_P<23>_UNCONNECTED , \NLW_blk0000052f_P<22>_UNCONNECTED , \NLW_blk0000052f_P<21>_UNCONNECTED , 
\NLW_blk0000052f_P<20>_UNCONNECTED , \NLW_blk0000052f_P<19>_UNCONNECTED , \NLW_blk0000052f_P<18>_UNCONNECTED , \NLW_blk0000052f_P<17>_UNCONNECTED , 
\NLW_blk0000052f_P<16>_UNCONNECTED , \NLW_blk0000052f_P<15>_UNCONNECTED , \NLW_blk0000052f_P<14>_UNCONNECTED , \NLW_blk0000052f_P<13>_UNCONNECTED , 
\NLW_blk0000052f_P<12>_UNCONNECTED , \NLW_blk0000052f_P<11>_UNCONNECTED , \NLW_blk0000052f_P<10>_UNCONNECTED , \NLW_blk0000052f_P<9>_UNCONNECTED , 
\NLW_blk0000052f_P<8>_UNCONNECTED , \NLW_blk0000052f_P<7>_UNCONNECTED , \NLW_blk0000052f_P<6>_UNCONNECTED , \NLW_blk0000052f_P<5>_UNCONNECTED , 
\NLW_blk0000052f_P<4>_UNCONNECTED , \NLW_blk0000052f_P<3>_UNCONNECTED , \NLW_blk0000052f_P<2>_UNCONNECTED , \NLW_blk0000052f_P<1>_UNCONNECTED , 
\NLW_blk0000052f_P<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002})
  );
  DSP48E #(
    .ACASCREG ( 2 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 2 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 2 ),
    .BREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT_S" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk00000530 (
    .CLK(clk),
    .PATTERNBDETECT(NLW_blk00000530_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000001),
    .MULTSIGNOUT(NLW_blk00000530_MULTSIGNOUT_UNCONNECTED),
    .CEC(sig00000002),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000001),
    .RSTCTRL(sig00000002),
    .CEP(sig00000001),
    .CARRYCASCOUT(NLW_blk00000530_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk00000530_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_blk00000530_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CEALUMODE(sig00000001),
    .CEA2(sig00000001),
    .CEA1(sig00000001),
    .RSTB(sig00000002),
    .CEMULTCARRYIN(sig00000002),
    .OVERFLOW(NLW_blk00000530_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(sig00000001),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTP(sig00000002),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001}),
    .PCIN({sig0000026b, sig0000026c, sig0000026d, sig0000026e, sig0000026f, sig00000270, sig00000271, sig00000272, sig00000273, sig00000274, 
sig00000275, sig00000276, sig00000277, sig00000278, sig00000279, sig0000027a, sig0000027b, sig0000027c, sig0000027d, sig0000027e, sig0000027f, 
sig00000280, sig00000281, sig00000282, sig00000283, sig00000284, sig00000285, sig00000286, sig00000287, sig00000288, sig00000289, sig0000028a, 
sig0000028b, sig0000028c, sig0000028d, sig0000028e, sig0000028f, sig00000290, sig00000291, sig00000292, sig00000293, sig00000294, sig00000295, 
sig00000296, sig00000297, sig00000298, sig00000299, sig0000029a}),
    .ALUMODE({sig00000002, sig00000002, sig00000269, sig00000269}),
    .B({sig000002af, sig000002af, sig000002ae, sig000002ad, sig000002ac, sig000002ab, sig000002aa, sig000002a9, sig000002a8, sig000002a7, sig000002a6
, sig000002a5, sig000002a4, sig000002a3, sig000002a2, sig000002a1, sig000002a0, sig0000029f}),
    .P({\NLW_blk00000530_P<47>_UNCONNECTED , \NLW_blk00000530_P<46>_UNCONNECTED , \NLW_blk00000530_P<45>_UNCONNECTED , 
\NLW_blk00000530_P<44>_UNCONNECTED , \NLW_blk00000530_P<43>_UNCONNECTED , \NLW_blk00000530_P<42>_UNCONNECTED , \NLW_blk00000530_P<41>_UNCONNECTED , 
\NLW_blk00000530_P<40>_UNCONNECTED , sig000002dc, sig000002db, sig000002da, sig000002d9, sig000002d8, sig000002d7, sig000002d6, sig000002d5, 
sig000002d4, sig000002d3, sig000002d2, sig000002d1, sig000002d0, sig000002cf, sig000002ce, sig000002cd, sig000002cc, sig000002cb, sig000002ca, 
sig000002c9, sig000002c8, sig000002c7, sig000002c6, sig000002c5, sig000002c4, sig000002c3, sig000002c2, sig000002c1, 
\NLW_blk00000530_P<11>_UNCONNECTED , \NLW_blk00000530_P<10>_UNCONNECTED , \NLW_blk00000530_P<9>_UNCONNECTED , \NLW_blk00000530_P<8>_UNCONNECTED , 
\NLW_blk00000530_P<7>_UNCONNECTED , \NLW_blk00000530_P<6>_UNCONNECTED , \NLW_blk00000530_P<5>_UNCONNECTED , \NLW_blk00000530_P<4>_UNCONNECTED , 
\NLW_blk00000530_P<3>_UNCONNECTED , \NLW_blk00000530_P<2>_UNCONNECTED , \NLW_blk00000530_P<1>_UNCONNECTED , \NLW_blk00000530_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000316, sig00000316, sig00000315, sig00000314, sig00000313, sig00000312
, sig00000311, sig00000310, sig0000030f, sig0000030e, sig0000030d, sig0000030c, sig0000030b, sig0000030a, sig00000309, sig00000308, sig00000307, 
sig00000306, sig00000305, sig00000304, sig00000303, sig00000302, sig00000301, sig00000300, sig000002ff}),
    .PCOUT({\NLW_blk00000530_PCOUT<47>_UNCONNECTED , \NLW_blk00000530_PCOUT<46>_UNCONNECTED , \NLW_blk00000530_PCOUT<45>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<44>_UNCONNECTED , \NLW_blk00000530_PCOUT<43>_UNCONNECTED , \NLW_blk00000530_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<41>_UNCONNECTED , \NLW_blk00000530_PCOUT<40>_UNCONNECTED , \NLW_blk00000530_PCOUT<39>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<38>_UNCONNECTED , \NLW_blk00000530_PCOUT<37>_UNCONNECTED , \NLW_blk00000530_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<35>_UNCONNECTED , \NLW_blk00000530_PCOUT<34>_UNCONNECTED , \NLW_blk00000530_PCOUT<33>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<32>_UNCONNECTED , \NLW_blk00000530_PCOUT<31>_UNCONNECTED , \NLW_blk00000530_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<29>_UNCONNECTED , \NLW_blk00000530_PCOUT<28>_UNCONNECTED , \NLW_blk00000530_PCOUT<27>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<26>_UNCONNECTED , \NLW_blk00000530_PCOUT<25>_UNCONNECTED , \NLW_blk00000530_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<23>_UNCONNECTED , \NLW_blk00000530_PCOUT<22>_UNCONNECTED , \NLW_blk00000530_PCOUT<21>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<20>_UNCONNECTED , \NLW_blk00000530_PCOUT<19>_UNCONNECTED , \NLW_blk00000530_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<17>_UNCONNECTED , \NLW_blk00000530_PCOUT<16>_UNCONNECTED , \NLW_blk00000530_PCOUT<15>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<14>_UNCONNECTED , \NLW_blk00000530_PCOUT<13>_UNCONNECTED , \NLW_blk00000530_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<11>_UNCONNECTED , \NLW_blk00000530_PCOUT<10>_UNCONNECTED , \NLW_blk00000530_PCOUT<9>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<8>_UNCONNECTED , \NLW_blk00000530_PCOUT<7>_UNCONNECTED , \NLW_blk00000530_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<5>_UNCONNECTED , \NLW_blk00000530_PCOUT<4>_UNCONNECTED , \NLW_blk00000530_PCOUT<3>_UNCONNECTED , 
\NLW_blk00000530_PCOUT<2>_UNCONNECTED , \NLW_blk00000530_PCOUT<1>_UNCONNECTED , \NLW_blk00000530_PCOUT<0>_UNCONNECTED }),
    .ACOUT({\NLW_blk00000530_ACOUT<29>_UNCONNECTED , \NLW_blk00000530_ACOUT<28>_UNCONNECTED , \NLW_blk00000530_ACOUT<27>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<26>_UNCONNECTED , \NLW_blk00000530_ACOUT<25>_UNCONNECTED , \NLW_blk00000530_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<23>_UNCONNECTED , \NLW_blk00000530_ACOUT<22>_UNCONNECTED , \NLW_blk00000530_ACOUT<21>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<20>_UNCONNECTED , \NLW_blk00000530_ACOUT<19>_UNCONNECTED , \NLW_blk00000530_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<17>_UNCONNECTED , \NLW_blk00000530_ACOUT<16>_UNCONNECTED , \NLW_blk00000530_ACOUT<15>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<14>_UNCONNECTED , \NLW_blk00000530_ACOUT<13>_UNCONNECTED , \NLW_blk00000530_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<11>_UNCONNECTED , \NLW_blk00000530_ACOUT<10>_UNCONNECTED , \NLW_blk00000530_ACOUT<9>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<8>_UNCONNECTED , \NLW_blk00000530_ACOUT<7>_UNCONNECTED , \NLW_blk00000530_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<5>_UNCONNECTED , \NLW_blk00000530_ACOUT<4>_UNCONNECTED , \NLW_blk00000530_ACOUT<3>_UNCONNECTED , 
\NLW_blk00000530_ACOUT<2>_UNCONNECTED , \NLW_blk00000530_ACOUT<1>_UNCONNECTED , \NLW_blk00000530_ACOUT<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig00000002, sig00000001, sig00000002, sig00000001, sig00000002, sig00000001}),
    .CARRYOUT({\NLW_blk00000530_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000530_CARRYOUT<2>_UNCONNECTED , \NLW_blk00000530_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk00000530_CARRYOUT<0>_UNCONNECTED }),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCOUT({\NLW_blk00000530_BCOUT<17>_UNCONNECTED , \NLW_blk00000530_BCOUT<16>_UNCONNECTED , \NLW_blk00000530_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000530_BCOUT<14>_UNCONNECTED , \NLW_blk00000530_BCOUT<13>_UNCONNECTED , \NLW_blk00000530_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000530_BCOUT<11>_UNCONNECTED , \NLW_blk00000530_BCOUT<10>_UNCONNECTED , \NLW_blk00000530_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000530_BCOUT<8>_UNCONNECTED , \NLW_blk00000530_BCOUT<7>_UNCONNECTED , \NLW_blk00000530_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000530_BCOUT<5>_UNCONNECTED , \NLW_blk00000530_BCOUT<4>_UNCONNECTED , \NLW_blk00000530_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000530_BCOUT<2>_UNCONNECTED , \NLW_blk00000530_BCOUT<1>_UNCONNECTED , \NLW_blk00000530_BCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002})
  );
  RAMB18SDP #(
    .DO_REG ( 1 ),
    .INIT ( 36'h000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "GENERATE_X_ONLY" ),
    .SIM_MODE ( "SAFE" ),
    .SRVAL ( 36'h000000000 ))
  \blk0000020c/blk00000240  (
    .WREN(\blk0000020c/sig000005fc ),
    .RDCLK(clk),
    .RDEN(\blk0000020c/sig000005fc ),
    .WRCLK(clk),
    .REGCE(\blk0000020c/sig000005fc ),
    .SSR(\blk0000020c/sig000005fd ),
    .DIP({\blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , sig0000012d}),
    .DOP({\NLW_blk0000020c/blk00000240_DOP<3>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DOP<2>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DOP<1>_UNCONNECTED , \blk0000020c/sig000005cb }),
    .WE({sig0000006b, sig0000006b, sig0000006b, sig0000006b}),
    .DO({\NLW_blk0000020c/blk00000240_DO<31>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<30>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<29>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<28>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<27>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<26>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<25>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<24>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<23>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<22>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<21>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<20>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<19>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<18>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<17>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<16>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<15>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<14>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<13>_UNCONNECTED , \NLW_blk0000020c/blk00000240_DO<12>_UNCONNECTED , 
\NLW_blk0000020c/blk00000240_DO<11>_UNCONNECTED , \blk0000020c/sig000005c8 , \blk0000020c/sig000005c9 , \blk0000020c/sig000005ca , 
\blk0000020c/sig000005c0 , \blk0000020c/sig000005c1 , \blk0000020c/sig000005c2 , \blk0000020c/sig000005c3 , \blk0000020c/sig000005c4 , 
\blk0000020c/sig000005c5 , \blk0000020c/sig000005c6 , \blk0000020c/sig000005c7 }),
    .WRADDR({sig00000268, sig00000267, sig00000266, sig00000265, sig00000264, sig00000263, sig00000262, \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd }),
    .RDADDR({sig00000261, sig00000260, sig0000025f, sig0000025e, sig0000025d, sig0000025c, sig0000025b, \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd }),
    .DI({\blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd , sig00000130, sig0000012f, sig0000012e, sig0000012c, sig0000012b, sig0000012a, sig00000129, sig00000128, sig00000127, 
sig00000126, sig00000125})
  );
  RAMB18SDP #(
    .DO_REG ( 1 ),
    .INIT ( 36'h000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "GENERATE_X_ONLY" ),
    .SIM_MODE ( "SAFE" ),
    .SRVAL ( 36'h000000000 ))
  \blk0000020c/blk0000023f  (
    .WREN(\blk0000020c/sig000005fc ),
    .RDCLK(clk),
    .RDEN(\blk0000020c/sig000005fc ),
    .WRCLK(clk),
    .REGCE(\blk0000020c/sig000005fc ),
    .SSR(\blk0000020c/sig000005fd ),
    .RDADDR({sig00000261, sig00000260, sig0000025f, sig0000025e, sig0000025d, sig0000025c, sig0000025b, \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd }),
    .DOP({\blk0000020c/sig000005bf , \blk0000020c/sig000005be , \blk0000020c/sig000005bd , \blk0000020c/sig000005bc }),
    .WE({sig0000006b, sig0000006b, sig0000006b, sig0000006b}),
    .DO({\blk0000020c/sig000005b4 , \blk0000020c/sig000005b5 , \blk0000020c/sig000005b6 , \blk0000020c/sig000005b7 , \blk0000020c/sig000005b8 , 
\blk0000020c/sig000005b9 , \blk0000020c/sig000005ba , \blk0000020c/sig000005bb , \blk0000020c/sig000005ac , \blk0000020c/sig000005ad , 
\blk0000020c/sig000005ae , \blk0000020c/sig000005af , \blk0000020c/sig000005b0 , \blk0000020c/sig000005b1 , \blk0000020c/sig000005b2 , 
\blk0000020c/sig000005b3 , \blk0000020c/sig000005a4 , \blk0000020c/sig000005a5 , \blk0000020c/sig000005a6 , \blk0000020c/sig000005a7 , 
\blk0000020c/sig000005a8 , \blk0000020c/sig000005a9 , \blk0000020c/sig000005aa , \blk0000020c/sig000005ab , \blk0000020c/sig0000059c , 
\blk0000020c/sig0000059d , \blk0000020c/sig0000059e , \blk0000020c/sig0000059f , \blk0000020c/sig000005a0 , \blk0000020c/sig000005a1 , 
\blk0000020c/sig000005a2 , \blk0000020c/sig000005a3 }),
    .WRADDR({sig00000268, sig00000267, sig00000266, sig00000265, sig00000264, sig00000263, sig00000262, \blk0000020c/sig000005fd , 
\blk0000020c/sig000005fd }),
    .DI({sig00000123, sig00000122, sig00000121, sig00000120, sig0000011f, sig0000011e, sig0000011d, sig0000011c, sig0000011a, sig00000119, sig00000118
, sig00000117, sig00000116, sig00000115, sig00000114, sig00000113, sig00000111, sig00000110, sig0000010f, sig0000010e, sig0000010d, sig0000010c, 
sig0000010b, sig0000010a, sig00000108, sig00000107, sig00000106, sig00000105, sig00000104, sig00000103, sig00000102, sig00000101}),
    .DIP({sig00000124, sig0000011b, sig00000112, sig00000109})
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000023e  (
    .C(clk),
    .D(\blk0000020c/sig000005c8 ),
    .Q(sig000001c2)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000023d  (
    .C(clk),
    .D(\blk0000020c/sig000005c9 ),
    .Q(sig000001c1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000023c  (
    .C(clk),
    .D(\blk0000020c/sig000005ca ),
    .Q(sig000001c0)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000023b  (
    .C(clk),
    .D(\blk0000020c/sig000005cb ),
    .Q(sig000001bf)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000023a  (
    .C(clk),
    .D(\blk0000020c/sig000005c0 ),
    .Q(sig000001be)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000239  (
    .C(clk),
    .D(\blk0000020c/sig000005c1 ),
    .Q(sig000001bd)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000238  (
    .C(clk),
    .D(\blk0000020c/sig000005c2 ),
    .Q(sig000001bc)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000237  (
    .C(clk),
    .D(\blk0000020c/sig000005c3 ),
    .Q(sig000001bb)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000236  (
    .C(clk),
    .D(\blk0000020c/sig000005c4 ),
    .Q(sig000001ba)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000235  (
    .C(clk),
    .D(\blk0000020c/sig000005c5 ),
    .Q(sig000001b9)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000234  (
    .C(clk),
    .D(\blk0000020c/sig000005c6 ),
    .Q(sig000001b8)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000233  (
    .C(clk),
    .D(\blk0000020c/sig000005c7 ),
    .Q(sig000001b7)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000232  (
    .C(clk),
    .D(\blk0000020c/sig000005bf ),
    .Q(sig000001b6)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000231  (
    .C(clk),
    .D(\blk0000020c/sig000005b4 ),
    .Q(sig000001b5)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000230  (
    .C(clk),
    .D(\blk0000020c/sig000005b5 ),
    .Q(sig000001b4)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000022f  (
    .C(clk),
    .D(\blk0000020c/sig000005b6 ),
    .Q(sig000001b3)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000022e  (
    .C(clk),
    .D(\blk0000020c/sig000005b7 ),
    .Q(sig000001b2)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000022d  (
    .C(clk),
    .D(\blk0000020c/sig000005b8 ),
    .Q(sig000001b1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000022c  (
    .C(clk),
    .D(\blk0000020c/sig000005b9 ),
    .Q(sig000001b0)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000022b  (
    .C(clk),
    .D(\blk0000020c/sig000005ba ),
    .Q(sig000001af)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000022a  (
    .C(clk),
    .D(\blk0000020c/sig000005bb ),
    .Q(sig000001ae)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000229  (
    .C(clk),
    .D(\blk0000020c/sig000005be ),
    .Q(sig000001ad)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000228  (
    .C(clk),
    .D(\blk0000020c/sig000005ac ),
    .Q(sig000001ac)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000227  (
    .C(clk),
    .D(\blk0000020c/sig000005ad ),
    .Q(sig000001ab)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000226  (
    .C(clk),
    .D(\blk0000020c/sig000005ae ),
    .Q(sig000001aa)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000225  (
    .C(clk),
    .D(\blk0000020c/sig000005af ),
    .Q(sig000001a9)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000224  (
    .C(clk),
    .D(\blk0000020c/sig000005b0 ),
    .Q(sig000001a8)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000223  (
    .C(clk),
    .D(\blk0000020c/sig000005b1 ),
    .Q(sig000001a7)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000222  (
    .C(clk),
    .D(\blk0000020c/sig000005b2 ),
    .Q(sig000001a6)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000221  (
    .C(clk),
    .D(\blk0000020c/sig000005b3 ),
    .Q(sig000001a5)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000220  (
    .C(clk),
    .D(\blk0000020c/sig000005bd ),
    .Q(sig000001a4)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000021f  (
    .C(clk),
    .D(\blk0000020c/sig000005a4 ),
    .Q(sig000001a3)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000021e  (
    .C(clk),
    .D(\blk0000020c/sig000005a5 ),
    .Q(sig000001a2)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000021d  (
    .C(clk),
    .D(\blk0000020c/sig000005a6 ),
    .Q(sig000001a1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000021c  (
    .C(clk),
    .D(\blk0000020c/sig000005a7 ),
    .Q(sig000001a0)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000021b  (
    .C(clk),
    .D(\blk0000020c/sig000005a8 ),
    .Q(sig0000019f)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000021a  (
    .C(clk),
    .D(\blk0000020c/sig000005a9 ),
    .Q(sig0000019e)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000219  (
    .C(clk),
    .D(\blk0000020c/sig000005aa ),
    .Q(sig0000019d)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000218  (
    .C(clk),
    .D(\blk0000020c/sig000005ab ),
    .Q(sig0000019c)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000217  (
    .C(clk),
    .D(\blk0000020c/sig000005bc ),
    .Q(sig0000019b)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000216  (
    .C(clk),
    .D(\blk0000020c/sig0000059c ),
    .Q(sig0000019a)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000215  (
    .C(clk),
    .D(\blk0000020c/sig0000059d ),
    .Q(sig00000199)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000214  (
    .C(clk),
    .D(\blk0000020c/sig0000059e ),
    .Q(sig00000198)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000213  (
    .C(clk),
    .D(\blk0000020c/sig0000059f ),
    .Q(sig00000197)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000212  (
    .C(clk),
    .D(\blk0000020c/sig000005a0 ),
    .Q(sig00000196)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000211  (
    .C(clk),
    .D(\blk0000020c/sig000005a1 ),
    .Q(sig00000195)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk00000210  (
    .C(clk),
    .D(\blk0000020c/sig000005a2 ),
    .Q(sig00000194)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk0000020c/blk0000020f  (
    .C(clk),
    .D(\blk0000020c/sig000005a3 ),
    .Q(sig00000193)
  );
  GND   \blk0000020c/blk0000020e  (
    .G(\blk0000020c/sig000005fd )
  );
  VCC   \blk0000020c/blk0000020d  (
    .P(\blk0000020c/sig000005fc )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000002a1/blk000002a2/blk000002a6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000002a1/blk000002a2/sig00000609 ),
    .Q(sig00000192)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000002a1/blk000002a2/blk000002a5  (
    .A0(\blk000002a1/blk000002a2/sig00000607 ),
    .A1(\blk000002a1/blk000002a2/sig00000608 ),
    .A2(\blk000002a1/blk000002a2/sig00000607 ),
    .A3(\blk000002a1/blk000002a2/sig00000607 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000008),
    .Q(\blk000002a1/blk000002a2/sig00000609 ),
    .Q15(\NLW_blk000002a1/blk000002a2/blk000002a5_Q15_UNCONNECTED )
  );
  VCC   \blk000002a1/blk000002a2/blk000002a4  (
    .P(\blk000002a1/blk000002a2/sig00000608 )
  );
  GND   \blk000002a1/blk000002a2/blk000002a3  (
    .G(\blk000002a1/blk000002a2/sig00000607 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000307/blk00000308/blk0000030c  (
    .C(clk),
    .CE(\blk00000307/blk00000308/sig00000611 ),
    .D(\blk00000307/blk00000308/sig00000612 ),
    .Q(sig00000161)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000307/blk00000308/blk0000030b  (
    .A0(\blk00000307/blk00000308/sig00000611 ),
    .A1(\blk00000307/blk00000308/sig00000610 ),
    .A2(\blk00000307/blk00000308/sig00000611 ),
    .A3(\blk00000307/blk00000308/sig00000610 ),
    .CE(\blk00000307/blk00000308/sig00000611 ),
    .CLK(clk),
    .D(sig00000100),
    .Q(\blk00000307/blk00000308/sig00000612 ),
    .Q15(\NLW_blk00000307/blk00000308/blk0000030b_Q15_UNCONNECTED )
  );
  VCC   \blk00000307/blk00000308/blk0000030a  (
    .P(\blk00000307/blk00000308/sig00000611 )
  );
  GND   \blk00000307/blk00000308/blk00000309  (
    .G(\blk00000307/blk00000308/sig00000610 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000038b/blk0000038c/blk00000390  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000038b/blk0000038c/sig0000061e ),
    .Q(sig0000000a)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000038b/blk0000038c/blk0000038f  (
    .A0(\blk0000038b/blk0000038c/sig0000061d ),
    .A1(\blk0000038b/blk0000038c/sig0000061c ),
    .A2(\blk0000038b/blk0000038c/sig0000061c ),
    .A3(\blk0000038b/blk0000038c/sig0000061c ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000004ba),
    .Q(\blk0000038b/blk0000038c/sig0000061e ),
    .Q15(\NLW_blk0000038b/blk0000038c/blk0000038f_Q15_UNCONNECTED )
  );
  VCC   \blk0000038b/blk0000038c/blk0000038e  (
    .P(\blk0000038b/blk0000038c/sig0000061d )
  );
  GND   \blk0000038b/blk0000038c/blk0000038d  (
    .G(\blk0000038b/blk0000038c/sig0000061c )
  );
  INV   \blk000003b7/blk000003cc  (
    .I(sig000004d3),
    .O(\blk000003b7/sig00000635 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003b7/blk000003cb  (
    .I0(sig000004d4),
    .O(\blk000003b7/sig0000063a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003b7/blk000003ca  (
    .I0(sig000004d5),
    .O(\blk000003b7/sig00000639 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003b7/blk000003c9  (
    .I0(sig000004d6),
    .O(\blk000003b7/sig00000638 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003b7/blk000003c8  (
    .I0(sig000004d7),
    .O(\blk000003b7/sig00000637 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003b7/blk000003c7  (
    .I0(sig000004d8),
    .O(\blk000003b7/sig00000636 )
  );
  MUXCY   \blk000003b7/blk000003c6  (
    .CI(\blk000003b7/sig0000062e ),
    .DI(\blk000003b7/sig0000062d ),
    .S(\blk000003b7/sig00000635 ),
    .O(\blk000003b7/sig00000634 )
  );
  XORCY   \blk000003b7/blk000003c5  (
    .CI(\blk000003b7/sig0000062e ),
    .LI(\blk000003b7/sig00000635 ),
    .O(sig000004c5)
  );
  XORCY   \blk000003b7/blk000003c4  (
    .CI(\blk000003b7/sig0000062f ),
    .LI(sig000004d9),
    .O(sig000004cb)
  );
  MUXCY   \blk000003b7/blk000003c3  (
    .CI(\blk000003b7/sig00000634 ),
    .DI(\blk000003b7/sig0000062e ),
    .S(\blk000003b7/sig0000063a ),
    .O(\blk000003b7/sig00000633 )
  );
  XORCY   \blk000003b7/blk000003c2  (
    .CI(\blk000003b7/sig00000634 ),
    .LI(\blk000003b7/sig0000063a ),
    .O(sig000004c6)
  );
  MUXCY   \blk000003b7/blk000003c1  (
    .CI(\blk000003b7/sig00000633 ),
    .DI(\blk000003b7/sig0000062e ),
    .S(\blk000003b7/sig00000639 ),
    .O(\blk000003b7/sig00000632 )
  );
  XORCY   \blk000003b7/blk000003c0  (
    .CI(\blk000003b7/sig00000633 ),
    .LI(\blk000003b7/sig00000639 ),
    .O(sig000004c7)
  );
  MUXCY   \blk000003b7/blk000003bf  (
    .CI(\blk000003b7/sig00000632 ),
    .DI(\blk000003b7/sig0000062e ),
    .S(\blk000003b7/sig00000638 ),
    .O(\blk000003b7/sig00000631 )
  );
  XORCY   \blk000003b7/blk000003be  (
    .CI(\blk000003b7/sig00000632 ),
    .LI(\blk000003b7/sig00000638 ),
    .O(sig000004c8)
  );
  MUXCY   \blk000003b7/blk000003bd  (
    .CI(\blk000003b7/sig00000631 ),
    .DI(\blk000003b7/sig0000062e ),
    .S(\blk000003b7/sig00000637 ),
    .O(\blk000003b7/sig00000630 )
  );
  XORCY   \blk000003b7/blk000003bc  (
    .CI(\blk000003b7/sig00000631 ),
    .LI(\blk000003b7/sig00000637 ),
    .O(sig000004c9)
  );
  MUXCY   \blk000003b7/blk000003bb  (
    .CI(\blk000003b7/sig00000630 ),
    .DI(\blk000003b7/sig0000062e ),
    .S(\blk000003b7/sig00000636 ),
    .O(\blk000003b7/sig0000062f )
  );
  XORCY   \blk000003b7/blk000003ba  (
    .CI(\blk000003b7/sig00000630 ),
    .LI(\blk000003b7/sig00000636 ),
    .O(sig000004ca)
  );
  GND   \blk000003b7/blk000003b9  (
    .G(\blk000003b7/sig0000062e )
  );
  VCC   \blk000003b7/blk000003b8  (
    .P(\blk000003b7/sig0000062d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003f7/blk000003f8/blk000003fc  (
    .C(clk),
    .CE(\blk000003f7/blk000003f8/sig00000642 ),
    .D(\blk000003f7/blk000003f8/sig00000643 ),
    .Q(sig00000427)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000003f7/blk000003f8/blk000003fb  (
    .A0(\blk000003f7/blk000003f8/sig00000642 ),
    .A1(\blk000003f7/blk000003f8/sig00000641 ),
    .A2(\blk000003f7/blk000003f8/sig00000641 ),
    .A3(\blk000003f7/blk000003f8/sig00000642 ),
    .CE(\blk000003f7/blk000003f8/sig00000642 ),
    .CLK(clk),
    .D(sig0000042f),
    .Q(\blk000003f7/blk000003f8/sig00000643 ),
    .Q15(\NLW_blk000003f7/blk000003f8/blk000003fb_Q15_UNCONNECTED )
  );
  VCC   \blk000003f7/blk000003f8/blk000003fa  (
    .P(\blk000003f7/blk000003f8/sig00000642 )
  );
  GND   \blk000003f7/blk000003f8/blk000003f9  (
    .G(\blk000003f7/blk000003f8/sig00000641 )
  );
  INV   \blk000003fd/blk00000409  (
    .I(sig00000459),
    .O(\blk000003fd/sig00000651 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fd/blk00000408  (
    .I0(sig00000458),
    .O(\blk000003fd/sig00000653 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fd/blk00000407  (
    .I0(sig00000457),
    .O(\blk000003fd/sig00000652 )
  );
  MUXCY   \blk000003fd/blk00000406  (
    .CI(\blk000003fd/sig0000064d ),
    .DI(\blk000003fd/sig0000064c ),
    .S(\blk000003fd/sig00000651 ),
    .O(\blk000003fd/sig00000650 )
  );
  XORCY   \blk000003fd/blk00000405  (
    .CI(\blk000003fd/sig0000064d ),
    .LI(\blk000003fd/sig00000651 ),
    .O(sig00000468)
  );
  XORCY   \blk000003fd/blk00000404  (
    .CI(\blk000003fd/sig0000064e ),
    .LI(sig00000456),
    .O(sig00000465)
  );
  MUXCY   \blk000003fd/blk00000403  (
    .CI(\blk000003fd/sig00000650 ),
    .DI(\blk000003fd/sig0000064d ),
    .S(\blk000003fd/sig00000653 ),
    .O(\blk000003fd/sig0000064f )
  );
  XORCY   \blk000003fd/blk00000402  (
    .CI(\blk000003fd/sig00000650 ),
    .LI(\blk000003fd/sig00000653 ),
    .O(sig00000467)
  );
  MUXCY   \blk000003fd/blk00000401  (
    .CI(\blk000003fd/sig0000064f ),
    .DI(\blk000003fd/sig0000064d ),
    .S(\blk000003fd/sig00000652 ),
    .O(\blk000003fd/sig0000064e )
  );
  XORCY   \blk000003fd/blk00000400  (
    .CI(\blk000003fd/sig0000064f ),
    .LI(\blk000003fd/sig00000652 ),
    .O(sig00000466)
  );
  GND   \blk000003fd/blk000003ff  (
    .G(\blk000003fd/sig0000064d )
  );
  VCC   \blk000003fd/blk000003fe  (
    .P(\blk000003fd/sig0000064c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000040a/blk0000040b/blk0000040f  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000040a/blk0000040b/sig0000065f ),
    .Q(sig00000514)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000040a/blk0000040b/blk0000040e  (
    .A0(\blk0000040a/blk0000040b/sig0000065e ),
    .A1(\blk0000040a/blk0000040b/sig0000065d ),
    .A2(\blk0000040a/blk0000040b/sig0000065d ),
    .A3(\blk0000040a/blk0000040b/sig0000065d ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000471),
    .Q(\blk0000040a/blk0000040b/sig0000065f ),
    .Q15(\NLW_blk0000040a/blk0000040b/blk0000040e_Q15_UNCONNECTED )
  );
  VCC   \blk0000040a/blk0000040b/blk0000040d  (
    .P(\blk0000040a/blk0000040b/sig0000065e )
  );
  GND   \blk0000040a/blk0000040b/blk0000040c  (
    .G(\blk0000040a/blk0000040b/sig0000065d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000410/blk00000411/blk00000415  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000410/blk00000411/sig0000066b ),
    .Q(sig000004af)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000410/blk00000411/blk00000414  (
    .A0(\blk00000410/blk00000411/sig0000066a ),
    .A1(\blk00000410/blk00000411/sig00000669 ),
    .A2(\blk00000410/blk00000411/sig00000669 ),
    .A3(\blk00000410/blk00000411/sig00000669 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000511),
    .Q(\blk00000410/blk00000411/sig0000066b ),
    .Q15(\NLW_blk00000410/blk00000411/blk00000414_Q15_UNCONNECTED )
  );
  VCC   \blk00000410/blk00000411/blk00000413  (
    .P(\blk00000410/blk00000411/sig0000066a )
  );
  GND   \blk00000410/blk00000411/blk00000412  (
    .G(\blk00000410/blk00000411/sig00000669 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000416/blk00000417/blk0000041b  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000416/blk00000417/sig00000677 ),
    .Q(sig00000005)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000416/blk00000417/blk0000041a  (
    .A0(\blk00000416/blk00000417/sig00000676 ),
    .A1(\blk00000416/blk00000417/sig00000675 ),
    .A2(\blk00000416/blk00000417/sig00000675 ),
    .A3(\blk00000416/blk00000417/sig00000675 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .Q(\blk00000416/blk00000417/sig00000677 ),
    .Q15(\NLW_blk00000416/blk00000417/blk0000041a_Q15_UNCONNECTED )
  );
  VCC   \blk00000416/blk00000417/blk00000419  (
    .P(\blk00000416/blk00000417/sig00000676 )
  );
  GND   \blk00000416/blk00000417/blk00000418  (
    .G(\blk00000416/blk00000417/sig00000675 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000041c/blk0000041d/blk00000421  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000041c/blk0000041d/sig00000683 ),
    .Q(sig00000515)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000041c/blk0000041d/blk00000420  (
    .A0(\blk0000041c/blk0000041d/sig00000681 ),
    .A1(\blk0000041c/blk0000041d/sig00000682 ),
    .A2(\blk0000041c/blk0000041d/sig00000681 ),
    .A3(\blk0000041c/blk0000041d/sig00000681 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000004),
    .Q(\blk0000041c/blk0000041d/sig00000683 ),
    .Q15(\NLW_blk0000041c/blk0000041d/blk00000420_Q15_UNCONNECTED )
  );
  VCC   \blk0000041c/blk0000041d/blk0000041f  (
    .P(\blk0000041c/blk0000041d/sig00000682 )
  );
  GND   \blk0000041c/blk0000041d/blk0000041e  (
    .G(\blk0000041c/blk0000041d/sig00000681 )
  );
  INV   \blk00000439/blk00000455  (
    .I(sig00000509),
    .O(\blk00000439/sig000006a3 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000439/blk00000454  (
    .I0(sig0000050a),
    .O(\blk00000439/sig000006a8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000439/blk00000453  (
    .I0(sig0000050b),
    .O(\blk00000439/sig000006a7 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000439/blk00000452  (
    .I0(sig0000050c),
    .O(\blk00000439/sig000006a6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000439/blk00000451  (
    .I0(sig0000050d),
    .O(\blk00000439/sig000006a5 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000439/blk00000450  (
    .I0(sig0000050e),
    .O(\blk00000439/sig000006a4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk0000044f  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig000006a1 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk0000044e  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig0000069e ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk0000044d  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig0000069c ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk0000044c  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig0000069a ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk0000044b  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig00000698 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk0000044a  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig00000696 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000439/blk00000449  (
    .C(clk),
    .CE(\blk00000439/sig00000694 ),
    .D(\blk00000439/sig000006a0 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[6])
  );
  MUXCY   \blk00000439/blk00000448  (
    .CI(\blk00000439/sig00000695 ),
    .DI(\blk00000439/sig00000694 ),
    .S(\blk00000439/sig000006a3 ),
    .O(\blk00000439/sig000006a2 )
  );
  XORCY   \blk00000439/blk00000447  (
    .CI(\blk00000439/sig00000695 ),
    .LI(\blk00000439/sig000006a3 ),
    .O(\blk00000439/sig000006a1 )
  );
  XORCY   \blk00000439/blk00000446  (
    .CI(\blk00000439/sig00000697 ),
    .LI(sig0000050f),
    .O(\blk00000439/sig000006a0 )
  );
  MUXCY   \blk00000439/blk00000445  (
    .CI(\blk00000439/sig000006a2 ),
    .DI(\blk00000439/sig00000695 ),
    .S(\blk00000439/sig000006a8 ),
    .O(\blk00000439/sig0000069f )
  );
  XORCY   \blk00000439/blk00000444  (
    .CI(\blk00000439/sig000006a2 ),
    .LI(\blk00000439/sig000006a8 ),
    .O(\blk00000439/sig0000069e )
  );
  MUXCY   \blk00000439/blk00000443  (
    .CI(\blk00000439/sig0000069f ),
    .DI(\blk00000439/sig00000695 ),
    .S(\blk00000439/sig000006a7 ),
    .O(\blk00000439/sig0000069d )
  );
  XORCY   \blk00000439/blk00000442  (
    .CI(\blk00000439/sig0000069f ),
    .LI(\blk00000439/sig000006a7 ),
    .O(\blk00000439/sig0000069c )
  );
  MUXCY   \blk00000439/blk00000441  (
    .CI(\blk00000439/sig0000069d ),
    .DI(\blk00000439/sig00000695 ),
    .S(\blk00000439/sig000006a6 ),
    .O(\blk00000439/sig0000069b )
  );
  XORCY   \blk00000439/blk00000440  (
    .CI(\blk00000439/sig0000069d ),
    .LI(\blk00000439/sig000006a6 ),
    .O(\blk00000439/sig0000069a )
  );
  MUXCY   \blk00000439/blk0000043f  (
    .CI(\blk00000439/sig0000069b ),
    .DI(\blk00000439/sig00000695 ),
    .S(\blk00000439/sig000006a5 ),
    .O(\blk00000439/sig00000699 )
  );
  XORCY   \blk00000439/blk0000043e  (
    .CI(\blk00000439/sig0000069b ),
    .LI(\blk00000439/sig000006a5 ),
    .O(\blk00000439/sig00000698 )
  );
  MUXCY   \blk00000439/blk0000043d  (
    .CI(\blk00000439/sig00000699 ),
    .DI(\blk00000439/sig00000695 ),
    .S(\blk00000439/sig000006a4 ),
    .O(\blk00000439/sig00000697 )
  );
  XORCY   \blk00000439/blk0000043c  (
    .CI(\blk00000439/sig00000699 ),
    .LI(\blk00000439/sig000006a4 ),
    .O(\blk00000439/sig00000696 )
  );
  GND   \blk00000439/blk0000043b  (
    .G(\blk00000439/sig00000695 )
  );
  VCC   \blk00000439/blk0000043a  (
    .P(\blk00000439/sig00000694 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
