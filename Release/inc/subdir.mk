################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../inc/main_bak.cpp 

OBJS += \
./inc/main_bak.o 

CPP_DEPS += \
./inc/main_bak.d 


# Each subdirectory must supply rules for building sources it contributes
inc/%.o: ../inc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I/usr/include/freetype2 -I../GLTools/include -I../GLTools/include/GL -O3 -gencode arch=compute_37,code=sm_37 -gencode arch=compute_50,code=sm_50  -odir "inc" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I/usr/include/freetype2 -I../GLTools/include -I../GLTools/include/GL -O3 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


