include ../../Makefile.mk

all: NBody

NBody: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/NBody_Kernels.bin $(M2S_BIN) --si-sim functional ./NBody -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/NBody_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./NBody -q -e 

clean:
	rm -rf NBody
