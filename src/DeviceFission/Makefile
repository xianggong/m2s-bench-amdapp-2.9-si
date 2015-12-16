include ../../Makefile.mk

all: DeviceFission

DeviceFission: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/DeviceFission_Kernels.bin $(M2S_BIN) --si-sim functional ./DeviceFission -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/DeviceFission_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./DeviceFission -q -e 

clean:
	rm -rf DeviceFission
