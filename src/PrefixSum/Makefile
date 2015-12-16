include ../../Makefile.mk

all: PrefixSum

PrefixSum: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/PrefixSum_Kernels.bin $(M2S_BIN) --si-sim functional ./PrefixSum -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/PrefixSum_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./PrefixSum -q -e 

clean:
	rm -rf PrefixSum
