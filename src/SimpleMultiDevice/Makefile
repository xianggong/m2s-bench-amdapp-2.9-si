include ../../Makefile.mk

all: SimpleMultiDevice

SimpleMultiDevice: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/SimpleMultiDevice_Kernels.bin $(M2S_BIN) --si-sim functional ./SimpleMultiDevice -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/SimpleMultiDevice_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./SimpleMultiDevice -q -e 

clean:
	rm -rf SimpleMultiDevice
