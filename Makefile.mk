CC = gcc
CXX = g++

M2S_LIB = /home/xgong/Develop/multi2sim-4.2/lib/.libs 

INC = -I ../../include -I ../../include/SDKUtil
LD = -pthread -L $(M2S_LIB)  -Wl,--no-as-needed,-Bdynamic -static -lm2s-opencl
