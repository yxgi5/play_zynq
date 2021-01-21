################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/PS_i2c.c \
../src/main.c \
../src/platform.c \
../src/vdma_api.c \
../src/video_resolution.c \
../src/vtiming_gen.c 

OBJS += \
./src/PS_i2c.o \
./src/main.o \
./src/platform.o \
./src/vdma_api.o \
./src/video_resolution.o \
./src/vtiming_gen.o 

C_DEPS += \
./src/PS_i2c.d \
./src/main.d \
./src/platform.d \
./src/vdma_api.d \
./src/video_resolution.d \
./src/vtiming_gen.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../tpg_vdma_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


