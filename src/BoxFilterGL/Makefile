include ../../Makefile.mk

all: BoxFilterGL

BoxFilterGL: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BoxFilterGL_Kernels.bin $(M2S_BIN) --si-sim functional ./BoxFilterGL -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BoxFilterGL_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BoxFilterGL -q -e 

clean:
	rm -rf BoxFilterGL
