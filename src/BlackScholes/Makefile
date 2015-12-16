include ../../Makefile.mk

all: BlackScholes

BlackScholes: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BlackScholes_Kernels.bin $(M2S_BIN) --si-sim functional ./BlackScholes -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BlackScholes_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BlackScholes -q -e 

clean:
	rm -rf BlackScholes
