include ../../Makefile.mk

all: MemoryModel

MemoryModel: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MemoryModel_Kernels.bin $(M2S_BIN) --si-sim functional ./MemoryModel -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MemoryModel_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MemoryModel -q -e 

clean:
	rm -rf MemoryModel
