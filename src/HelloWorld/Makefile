include ../../Makefile.mk

all: HelloWorld

HelloWorld: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/HelloWorld_Kernels.bin $(M2S_BIN) --si-sim functional ./HelloWorld -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/HelloWorld_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./HelloWorld -q -e 

clean:
	rm -rf HelloWorld
