include ../../Makefile.mk

all: Histogram

Histogram: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/Histogram_Kernels.bin $(M2S_BIN) --si-sim functional ./Histogram -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/Histogram_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./Histogram -q -e 

clean:
	rm -rf Histogram
