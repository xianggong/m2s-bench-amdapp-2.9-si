include ../../Makefile.mk

all: Reduction

Reduction: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/Reduction_Kernels.bin $(M2S_BIN) --si-sim functional ./Reduction -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/Reduction_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./Reduction -q -e 

clean:
	rm -rf Reduction
