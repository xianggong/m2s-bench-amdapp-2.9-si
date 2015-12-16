include ../../Makefile.mk

all: BufferBandwidth

BufferBandwidth: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BufferBandwidth_Kernels.bin $(M2S_BIN) --si-sim functional ./BufferBandwidth -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BufferBandwidth_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BufferBandwidth -q -e 

clean:
	rm -rf BufferBandwidth
