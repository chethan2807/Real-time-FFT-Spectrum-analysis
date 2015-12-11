/*****************************************************************************
* Filename:          D:\STUDIES\NTU_PROJECTS\EMBEDDED_SYSTEM_DESIGN\FFT_HARDWARE_PROJ\FFT_XPS/drivers/fft_axi4_r_v1_00_a/src/fft_axi4_r.c
* Version:           1.00.a
* Description:       fft_axi4_r Driver Source File
* Date:              Tue Sep 22 11:58:27 2015 (by Create and Import Peripheral Wizard)
*****************************************************************************/


/***************************** Include Files *******************************/

#include "fft_axi4_r.h"

/************************** Function Definitions ***************************/

#include "xparameters.h"
#include "xbasic_types.h"
#include "xstatus.h"
#include "my_multiplier.h"

//Xuint32 *baseaddr_p = (Xuint32 *)XPAR_MY_MULTIPLIER_0_BASEADDR;

int main (void) {
  Xuint32 i;
  Xuint32 temp;
  Xuint32 baseaddr = X"6c200000";

  // Clear the screen
  xil_printf("%c[2J",27);

  // Check that the peripheral exists
  //XASSERT_NONVOID(baseaddr_p != XNULL);
  //baseaddr = (Xuint32) baseaddr_p;

  xil_printf("Multiplier Test\n\r");

  // Reset read and write packet FIFOs to initial state
  FFT_AXI4_R_mWriteMemory(baseaddr, 1234);
  FFT_AXI4_R_mReadMemory(baseaddr);

  // Push data to write packet FIFO
  /*for(i = 1; i <= 4; i++ ){
    temp = (i << 16) + i;
    xil_printf("Wrote: 0x%08x \n\r", temp);
    MY_MULTIPLIER_mWriteToFIFO(baseaddr,0, temp);
  }*/
 
  // pop data out from read packet FIFO