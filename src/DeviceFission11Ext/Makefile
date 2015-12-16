include ../../Makefile.mk

all: DeviceFission11Ext

DeviceFission11Ext: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/DeviceFission11Ext_Kernels.bin $(M2S_BIN) --si-sim functional ./DeviceFission11Ext -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/DeviceFission11Ext_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./DeviceFission11Ext -q -e 

clean:
	rm -rf DeviceFission11Ext
