##############################################################################
## Filename:          D:\STUDIES\NTU_PROJECTS\EMBEDDED_SYSTEM_DESIGN\FFT_HARDWARE_PROJ\FFT_XPS/drivers/fft_axi4_r_v1_00_a/data/fft_axi4_r_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Tue Sep 22 11:58:27 2015 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "fft_axi4_r" "NUM_INSTANCES" "DEVICE_ID" "C_S_AXI_MEM0_BASEADDR" "C_S_AXI_MEM0_HIGHADDR" 
}
