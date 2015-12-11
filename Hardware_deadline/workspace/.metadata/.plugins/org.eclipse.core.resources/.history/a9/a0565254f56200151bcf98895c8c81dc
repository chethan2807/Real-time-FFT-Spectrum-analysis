/*****************************************************************************
* Filename:          D:\STUDIES\NTU_PROJECTS\EMBEDDED_SYSTEM_DESIGN\FFT_HARDWARE_PROJ\FFT_XPS/drivers/fft_axi4_r_v1_00_a/src/fft_axi4_r.h
* Version:           1.00.a
* Description:       fft_axi4_r Driver Header File
* Date:              Tue Sep 22 11:58:27 2015 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef FFT_AXI4_R_H
#define FFT_AXI4_R_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/


/**************************** Type Definitions *****************************/


/**
 *
 * Write/Read 32 bit value to/from FFT_AXI4_R user logic memory (BRAM).
 *
 * @param   Address is the memory address of the FFT_AXI4_R device.
 * @param   Data is the value written to user logic memory.
 *
 * @return  The data from the user logic memory.
 *
 * @note
 * C-style signature:
 * 	void FFT_AXI4_R_mWriteMemory(Xuint32 Address, Xuint32 Data)
 * 	Xuint32 FFT_AXI4_R_mReadMemory(Xuint32 Address)
 *
 */
#define FFT_AXI4_R_mWriteMemory(Address, Data) \
 	Xil_Out32(Address, (Xuint32)(Data))
#define FFT_AXI4_R_mReadMemory(Address) \
 	Xil_In32(Address)

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the FFT_AXI4_R instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus FFT_AXI4_R_SelfTest(void * baseaddr_p);

#endif /** FFT_AXI4_R_H */
