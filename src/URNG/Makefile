include ../../Makefile.mk

all: URNG

URNG: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/URNG_Kernels.bin $(M2S_BIN) --si-sim functional ./URNG -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/URNG_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./URNG -q -e 

clean:
	rm -rf URNG
