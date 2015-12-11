##############################################################################
## Filename:          D:\STUDIES\NTU_PROJECTS\EMBEDDED_SYSTEM_DESIGN\FFT_HARDWARE_PROJ\FFT_XPS/drivers/fft_axi4_r_v1_00_a/src/Makefile
## Description:       Microprocessor Driver Makefile
## Date:              Tue Sep 22 11:58:27 2015 (by Create and Import Peripheral Wizard)
##############################################################################

COMPILER=
ARCHIVER=
CP=cp
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=
LIB=libxil.a

RELEASEDIR=../../../lib
INCLUDEDIR=../../../include
INCLUDES=-I./. -I${INCLUDEDIR}

INCLUDEFILES=*.h
LIBSOURCES=*.c
OUTS = *.o

libs:
	echo "Compiling fft_axi4_r"
	$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES)
	$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OUTS}
	make clean

include:
	${CP} $(INCLUDEFILES) $(INCLUDEDIR)

clean:
	rm -rf ${OUTS}
