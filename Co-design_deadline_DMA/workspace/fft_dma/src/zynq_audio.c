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
#include "xparameters.h"
#include "xbasic_types.h"
#include "xstatus.h"
#include "fft_axi4_r.h"
#include "xaxidma.h"
//void print(char *str);

#include <math.h>
#define timer_base 0xF8F00000
#define rounds 2000
#define DMA_DEV_ID			XPAR_AXIDMA_0_DEVICE_ID
#define MEM_BASE_ADDR		(XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x10000000)
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)
XAxiDma AxiDma;
/***********************************************************
Timer Registers
************************************************************/
static volatile int *timer_counter_l=(volatile int *)(timer_base+0x200);
static volatile int *timer_counter_h=(volatile int *)(timer_base+0x204);
static volatile int *timer_ctrl=(volatile int *)(timer_base+0x208);
XAxiDma_Config *CfgPtr;


int main()
{
	Xint16 audio_data[128];
	unsigned int *window_buffer=(unsigned int *)calloc(128*8, sizeof(unsigned int));
	unsigned int *noise_buf=(unsigned int *)calloc(128, sizeof(unsigned int));
	u32 *mag_buf;
	u32 *audi_buffer;
	mag_buf		 = (u32 *)RX_BUFFER_BASE;
	audi_buffer = (u32 *)TX_BUFFER_BASE;
	u8 *avg_buffer=(u8 *)calloc(128, sizeof(u8));
	Xil_Out32(OLED_BASE_ADDR,0xff);
	OLED_Init();			//oled init
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);
	AudioPllConfig(); //enable core clock for ADAU1761
	AudioConfigure();
	 //Initialise the timer for performance monitoring
	init_timer(timer_ctrl, timer_counter_l, timer_counter_h);
	Xuint32 baseaddr = 0x6C200000 ;
	xil_printf("ADAU1761 configured\n\r");
	/************* DMA Configuration ****************************/
	register unsigned int Status;
	CfgPtr = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (!CfgPtr) {
			xil_printf("No config found for %d\r\n", XPAR_AXIDMA_0_DEVICE_ID);
			return XST_FAILURE;
		}
	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
		if (Status != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status);
			return XST_FAILURE;
		}

		if(XAxiDma_HasSg(&AxiDma)){
			xil_printf("Device configured as SG mode \r\n");
			return XST_FAILURE;
		}

		/* Disable interrupts, we use polling mode
		 */
		XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE);
   /****************************************************************************************/
	/*
	 * perform continuous read and writes from the codec that result in a loopback
	 * from Line in to Line out
	 */
	register unsigned int noiseDeterminePhase = 1;
	register unsigned int  noiseRounds = 0;
	while(1)
	{
		register unsigned int i;

		if(noiseRounds >= rounds && noiseDeterminePhase){
			noiseDeterminePhase = 0;
		}
		else{
			noiseRounds++;
		}
		
		get_audio(audi_buffer);
		if(!noiseDeterminePhase){
			start_timer(timer_ctrl);
		}

		fft_dma(DMA_DEV_ID, audi_buffer, mag_buf);
			magnitude(mag_buf, window_buffer, 128);
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
