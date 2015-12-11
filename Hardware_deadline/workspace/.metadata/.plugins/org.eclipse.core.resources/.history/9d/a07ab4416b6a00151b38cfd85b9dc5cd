################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/audio.c \
../src/oled.c \
../src/timer.c \
../src/zynq_audio.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/audio.o \
./src/oled.o \
./src/timer.o \
./src/zynq_audio.o 

C_DEPS += \
./src/audio.d \
./src/oled.d \
./src/timer.d \
./src/zynq_audio.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo Building file: $<
	@echo Invoking: ARM gcc compiler
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../fft_axi4_r_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<
	@echo ' '


