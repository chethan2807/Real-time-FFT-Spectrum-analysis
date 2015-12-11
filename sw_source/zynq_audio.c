/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "audio.h"
#include "oled.h"
#include "sleep.h"
#include <stdlib.h>

//void print(char *str);

#include <math.h>
#define timer_base 0xF8F00000
#define rounds 4000
/***********************************************************
Timer Registers
************************************************************/
static volatile int *timer_counter_l=(volatile int *)(timer_base+0x200);
static volatile int *timer_counter_h=(volatile int *)(timer_base+0x204);
static volatile int *timer_ctrl=(volatile int *)(timer_base+0x208);

int main()
{
	Xint16 audio_data[128];
	int i,index=0, exe_time =1;
	unsigned int *window_buffer=(unsigned int *)calloc(128*8, sizeof(unsigned int));
	unsigned int *noise_buf=(unsigned int *)calloc(128, sizeof(unsigned int));
	u8 *avg_buffer=(u8 *)calloc(128, sizeof(u8));
	Xil_Out32(OLED_BASE_ADDR,0xff);
	OLED_Init();			//oled init
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);
	AudioPllConfig(); //enable core clock for ADAU1761
	AudioConfigure();
	 //Initialise the timer for performance monitoring
	init_timer(timer_ctrl, timer_counter_l, timer_counter_h);

	xil_printf("ADAU1761 configured\n\r");

	/*
	 * perform continuous read and writes from the codec that result in a loopback
	 * from Line in to Line out
	 */
	unsigned int noiseDeterminePhase = 1;
	unsigned int noiseAvg = 0, noiseRounds = 0;
	while(1)
	{
		int n = 256;
		int  j, i,m;
		double *fft_buf=(double *)calloc(256, sizeof(double));

		if(noiseRounds >= rounds && noiseDeterminePhase){
			noiseDeterminePhase = 0;
		}
		else{
			noiseRounds++;
		}
		if(!noiseDeterminePhase){
			start_timer(timer_ctrl);
		}
		get_audio(audio_data);

		j =0;
/* This for loop logic will arrange the input samples in bit reversed order which is required for decimation in time*/
		   for (i = 0; i < n; i += 2) {
		        if (j > i) {
		        	fft_buf[j] 	  = audio_data[i>>1];
		        	fft_buf[j+1] 	  = 0;
		        }
		        else {
		        	fft_buf[j] 	  = audio_data[i>>1];
		        	fft_buf[j+1] 	  = 0;
		        }
		        m = n >> 1;
		        while (m >= 2 && j >= m) {
		            j -= m;
		            m >>= 1;
		        }
		        j += m;
		    }

		fft(fft_buf, 128);
		magnitude(fft_buf, window_buffer, 128);
		free (fft_buf);
		averaging(window_buffer,avg_buffer, 128, noiseDeterminePhase,noise_buf);
  		if(!noiseDeterminePhase){
  		  	stop_timer(timer_ctrl);
  		  	xil_printf("Communication time %d us\n\r", (*timer_counter_l)/333);
  		  	OLED_Clear();
  		  	OLED_Equalizer_128(avg_buffer);
  		  		}
	}
    return 0;
}
