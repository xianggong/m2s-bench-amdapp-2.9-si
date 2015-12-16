include ../../Makefile.mk

all: SimpleGL

SimpleGL: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/SimpleGL_Kernels.bin $(M2S_BIN) --si-sim functional ./SimpleGL -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/SimpleGL_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./SimpleGL -q -e 

clean:
	rm -rf SimpleGL
