include ../../Makefile.mk

all: SimpleConvolution

SimpleConvolution: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/SimpleConvolution_Kernels.bin $(M2S_BIN) --si-sim functional ./SimpleConvolution -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/SimpleConvolution_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./SimpleConvolution -q -e 

clean:
	rm -rf SimpleConvolution
