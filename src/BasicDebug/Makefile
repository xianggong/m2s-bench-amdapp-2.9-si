include ../../Makefile.mk

all: BasicDebug

BasicDebug: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BasicDebug_Kernels.bin $(M2S_BIN) --si-sim functional ./BasicDebug -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BasicDebug_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BasicDebug -q -e 

clean:
	rm -rf BasicDebug
