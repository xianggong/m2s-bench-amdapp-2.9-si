include ../../Makefile.mk

all: RecursiveGaussian

RecursiveGaussian: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/RecursiveGaussian_Kernels.bin $(M2S_BIN) --si-sim functional ./RecursiveGaussian -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/RecursiveGaussian_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./RecursiveGaussian -q -e 

clean:
	rm -rf RecursiveGaussian
