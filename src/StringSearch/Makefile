include ../../Makefile.mk

all: StringSearch

StringSearch: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/StringSearch_Kernels.bin $(M2S_BIN) --si-sim functional ./StringSearch -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/StringSearch_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./StringSearch -q -e 

clean:
	rm -rf StringSearch
