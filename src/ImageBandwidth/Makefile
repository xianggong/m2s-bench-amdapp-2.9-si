include ../../Makefile.mk

all: ImageBandwidth

ImageBandwidth: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/ImageBandwidth_Kernels.bin $(M2S_BIN) --si-sim functional ./ImageBandwidth -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/ImageBandwidth_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./ImageBandwidth -q -e 

clean:
	rm -rf ImageBandwidth
