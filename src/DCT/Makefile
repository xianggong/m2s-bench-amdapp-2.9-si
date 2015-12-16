include ../../Makefile.mk

all: DCT

DCT: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/DCT_Kernels.bin $(M2S_BIN) --si-sim functional ./DCT -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/DCT_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./DCT -q -e 

clean:
	rm -rf DCT
