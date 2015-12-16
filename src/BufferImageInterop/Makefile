include ../../Makefile.mk

all: BufferImageInterop

BufferImageInterop: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BufferImageInterop_Kernels.bin $(M2S_BIN) --si-sim functional ./BufferImageInterop -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BufferImageInterop_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BufferImageInterop -q -e 

clean:
	rm -rf BufferImageInterop
