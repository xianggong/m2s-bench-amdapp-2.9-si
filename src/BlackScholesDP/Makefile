include ../../Makefile.mk

all: BlackScholesDP

BlackScholesDP: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BlackScholesDP_Kernels.bin $(M2S_BIN) --si-sim functional ./BlackScholesDP -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BlackScholesDP_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BlackScholesDP -q -e 

clean:
	rm -rf BlackScholesDP
