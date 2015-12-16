include ../../Makefile.mk

all: GaussianNoiseGL

GaussianNoiseGL: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/GaussianNoiseGL_Kernels.bin $(M2S_BIN) --si-sim functional ./GaussianNoiseGL -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/GaussianNoiseGL_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./GaussianNoiseGL -q -e 

clean:
	rm -rf GaussianNoiseGL
