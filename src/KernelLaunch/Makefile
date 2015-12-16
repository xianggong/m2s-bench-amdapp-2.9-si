include ../../Makefile.mk

all: KernelLaunch

KernelLaunch: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/KernelLaunch_Kernels.bin $(M2S_BIN) --si-sim functional ./KernelLaunch -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/KernelLaunch_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./KernelLaunch -q -e 

clean:
	rm -rf KernelLaunch
