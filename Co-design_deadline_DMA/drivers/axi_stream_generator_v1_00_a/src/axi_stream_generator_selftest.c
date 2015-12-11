/*****************************************************************************
* Filename:          D:\STUDIES\NTU_PROJECTS\EMBEDDED_SYSTEM_DESIGN\FFT_HARDWARE_PROJ\Backup\FFT_DMA\drivers/axi_stream_generator_v1_00_a/src/axi_stream_generator_selftest.c
* Version:           1.00.a
* Description:       
* Date:              Sun Nov 08 02:44:06 2015 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#include "xparameters.h"
#include "axi_stream_generator.h"

/* IMPORTANT:
*  Slot ID is hard coded in this example to 0. Modify it if needs to connected to different slot.
*/
#define input_slot_id   0
#define output_slot_id  0

XStatus AXI_STREAM_GENERATOR_SelfTest()
{
	 unsigned int input_0[128];     
	 unsigned int output_0[128];     

	 //Initialize your input data over here: 
	 input_0[0] = 12345;     
	 input_0[1] = 24690;     
	 input_0[2] = 37035;     
	 input_0[3] = 49380;     
	 input_0[4] = 61725;     
	 input_0[5] = 74070;     
	 input_0[6] = 86415;     
	 input_0[7] = 98760;     
	 input_0[8] = 111105;     
	 input_0[9] = 123450;     
	 input_0[10] = 135795;     
	 input_0[11] = 148140;     
	 input_0[12] = 160485;     
	 input_0[13] = 172830;     
	 input_0[14] = 185175;     
	 input_0[15] = 197520;     
	 input_0[16] = 209865;     
	 input_0[17] = 222210;     
	 input_0[18] = 234555;     
	 input_0[19] = 246900;     
	 input_0[20] = 259245;     
	 input_0[21] = 271590;     
	 input_0[22] = 283935;     
	 input_0[23] = 296280;     
	 input_0[24] = 308625;     
	 input_0[25] = 320970;     
	 input_0[26] = 333315;     
	 input_0[27] = 345660;     
	 input_0[28] = 358005;     
	 input_0[29] = 370350;     
	 input_0[30] = 382695;     
	 input_0[31] = 395040;     
	 input_0[32] = 407385;     
	 input_0[33] = 419730;     
	 input_0[34] = 432075;     
	 input_0[35] = 444420;     
	 input_0[36] = 456765;     
	 input_0[37] = 469110;     
	 input_0[38] = 481455;     
	 input_0[39] = 493800;     
	 input_0[40] = 506145;     
	 input_0[41] = 518490;     
	 input_0[42] = 530835;     
	 input_0[43] = 543180;     
	 input_0[44] = 555525;     
	 input_0[45] = 567870;     
	 input_0[46] = 580215;     
	 input_0[47] = 592560;     
	 input_0[48] = 604905;     
	 input_0[49] = 617250;     
	 input_0[50] = 629595;     
	 input_0[51] = 641940;     
	 input_0[52] = 654285;     
	 input_0[53] = 666630;     
	 input_0[54] = 678975;     
	 input_0[55] = 691320;     
	 input_0[56] = 703665;     
	 input_0[57] = 716010;     
	 input_0[58] = 728355;     
	 input_0[59] = 740700;     
	 input_0[60] = 753045;     
	 input_0[61] = 765390;     
	 input_0[62] = 777735;     
	 input_0[63] = 790080;     
	 input_0[64] = 802425;     
	 input_0[65] = 814770;     
	 input_0[66] = 827115;     
	 input_0[67] = 839460;     
	 input_0[68] = 851805;     
	 input_0[69] = 864150;     
	 input_0[70] = 876495;     
	 input_0[71] = 888840;     
	 input_0[72] = 901185;     
	 input_0[73] = 913530;     
	 input_0[74] = 925875;     
	 input_0[75] = 938220;     
	 input_0[76] = 950565;     
	 input_0[77] = 962910;     
	 input_0[78] = 975255;     
	 input_0[79] = 987600;     
	 input_0[80] = 999945;     
	 input_0[81] = 1012290;     
	 input_0[82] = 1024635;     
	 input_0[83] = 1036980;     
	 input_0[84] = 1049325;     
	 input_0[85] = 1061670;     
	 input_0[86] = 1074015;     
	 input_0[87] = 1086360;     
	 input_0[88] = 1098705;     
	 input_0[89] = 1111050;     
	 input_0[90] = 1123395;     
	 input_0[91] = 1135740;     
	 input_0[92] = 1148085;     
	 input_0[93] = 1160430;     
	 input_0[94] = 1172775;     
	 input_0[95] = 1185120;     
	 input_0[96] = 1197465;     
	 input_0[97] = 1209810;     
	 input_0[98] = 1222155;     
	 input_0[99] = 1234500;     
	 input_0[100] = 1246845;     
	 input_0[101] = 1259190;     
	 input_0[102] = 1271535;     
	 input_0[103] = 1283880;     
	 input_0[104] = 1296225;     
	 input_0[105] = 1308570;     
	 input_0[106] = 1320915;     
	 input_0[107] = 1333260;     
	 input_0[108] = 1345605;     
	 input_0[109] = 1357950;     
	 input_0[110] = 1370295;     
	 input_0[111] = 1382640;     
	 input_0[112] = 1394985;     
	 input_0[113] = 1407330;     
	 input_0[114] = 1419675;     
	 input_0[115] = 1432020;     
	 input_0[116] = 1444365;     
	 input_0[117] = 1456710;     
	 input_0[118] = 1469055;     
	 input_0[119] = 1481400;     
	 input_0[120] = 1493745;     
	 input_0[121] = 1506090;     
	 input_0[122] = 1518435;     
	 input_0[123] = 1530780;     
	 input_0[124] = 1543125;     
	 input_0[125] = 1555470;     
	 input_0[126] = 1567815;     
	 input_0[127] = 1580160;     

	 //Call the macro with instance specific slot IDs
	 axi_stream_generator(
		 input_slot_id,
		 output_slot_id,
		 input_0,      
		 output_0       
		 );

	 if (output_0[0] != 101920320)
		 return XST_FAILURE;
	 if (output_0[127] != 101920320)
		 return XST_FAILURE;

	 return XST_SUCCESS;
}
