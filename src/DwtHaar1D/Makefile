include ../../Makefile.mk

all: DwtHaar1D

DwtHaar1D: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/DwtHaar1D_Kernels.bin $(M2S_BIN) --si-sim functional ./DwtHaar1D -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/DwtHaar1D_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./DwtHaar1D -q -e 

clean:
	rm -rf DwtHaar1D
