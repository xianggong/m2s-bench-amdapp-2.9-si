include ../../Makefile.mk

all: BinarySearch

BinarySearch: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BinarySearch_Kernels.bin $(M2S_BIN) --si-sim functional ./BinarySearch -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BinarySearch_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BinarySearch -q -e 

clean:
	rm -rf BinarySearch
