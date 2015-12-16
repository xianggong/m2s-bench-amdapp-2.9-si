include ../../Makefile.mk

all: ImageOverlap

ImageOverlap: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/ImageOverlap_Kernels.bin $(M2S_BIN) --si-sim functional ./ImageOverlap -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/ImageOverlap_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./ImageOverlap -q -e 

clean:
	rm -rf ImageOverlap
