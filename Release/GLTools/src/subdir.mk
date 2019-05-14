################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../GLTools/src/GLBatch.cpp \
../GLTools/src/GLShaderManager.cpp \
../GLTools/src/GLTools.cpp \
../GLTools/src/GLTriangleBatch.cpp \
../GLTools/src/math3d.cpp 

C_SRCS += \
../GLTools/src/glew.c 

OBJS += \
./GLTools/src/GLBatch.o \
./GLTools/src/GLShaderManager.o \
./GLTools/src/GLTools.o \
./GLTools/src/GLTriangleBatch.o \
./GLTools/src/glew.o \
./GLTools/src/math3d.o 

C_DEPS += \
./GLTools/src/glew.d 

CPP_DEPS += \
./GLTools/src/GLBatch.d \
./GLTools/src/GLShaderManager.d \
./GLTools/src/GLTools.d \
./GLTools/src/GLTriangleBatch.d \
./GLTools/src/math3d.d 


# Each subdirectory must supply rules for building sources it contributes
GLTools/src/%.o: ../GLTools/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I/usr/include/freetype2 -I../GLTools/include -I../GLTools/include/GL -O3 -gencode arch=compute_37,code=sm_37 -gencode arch=compute_50,code=sm_50  -odir "GLTools/src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I/usr/include/freetype2 -I../GLTools/include -I../GLTools/include/GL -O3 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

GLTools/src/%.o: ../GLTools/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I/usr/include/freetype2 -I../GLTools/include -I../GLTools/include/GL -O3 -gencode arch=compute_37,code=sm_37 -gencode arch=compute_50,code=sm_50  -odir "GLTools/src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I/usr/include/freetype2 -I../GLTools/include -I../GLTools/include/GL -O3 --compile  -x c -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


