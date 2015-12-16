include ../../Makefile.mk

all: RadixSort

RadixSort: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/RadixSort_Kernels.bin $(M2S_BIN) --si-sim functional ./RadixSort -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/RadixSort_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./RadixSort -q -e 

clean:
	rm -rf RadixSort
