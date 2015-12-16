include ../../Makefile.mk

all: BitonicSort

BitonicSort: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BitonicSort_Kernels.bin $(M2S_BIN) --si-sim functional ./BitonicSort -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BitonicSort_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BitonicSort -q -e 

clean:
	rm -rf BitonicSort
