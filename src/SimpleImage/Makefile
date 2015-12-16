include ../../Makefile.mk

all: SimpleImage

SimpleImage: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/SimpleImage_Kernels.bin $(M2S_BIN) --si-sim functional ./SimpleImage -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/SimpleImage_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./SimpleImage -q -e 

clean:
	rm -rf SimpleImage
