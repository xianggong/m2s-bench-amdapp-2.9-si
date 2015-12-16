CC = gcc
CXX = g++

M2S_LIB = /home/xgong/multi2sim-4.2/lib/.libs 
M2S_BIN = /home/xgong/multi2sim-4.2/bin/m2s 

INC = -I ../../include -I ../../include/SDKUtil
LD = -pthread -L $(M2S_LIB)  -Wl,--no-as-needed,-Bdynamic -static -lm2s-opencl
