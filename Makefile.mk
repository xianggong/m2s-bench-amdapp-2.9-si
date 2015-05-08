CC = gcc
CXX = g++

M2S_LIB = YOUR_PATH_TO_M2S_LIB

INC = -I ../../include -I ../../include/SDKUtil
LD = -pthread -L $(M2S_LIB) -lm2s-opencl -Wl,--no-as-needed -ldl  
