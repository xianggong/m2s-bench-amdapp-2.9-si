include ../../Makefile.mk

all: QuasiRandomSequence

QuasiRandomSequence: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/QuasiRandomSequence_Kernels.bin $(M2S_BIN) --si-sim functional ./QuasiRandomSequence -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/QuasiRandomSequence_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./QuasiRandomSequence -q -e 

clean:
	rm -rf QuasiRandomSequence
