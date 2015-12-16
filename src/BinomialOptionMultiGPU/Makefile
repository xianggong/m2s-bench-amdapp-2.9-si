include ../../Makefile.mk

all: BinomialOptionMultiGPU

BinomialOptionMultiGPU: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BinomialOptionMultiGPU_Kernels.bin $(M2S_BIN) --si-sim functional ./BinomialOptionMultiGPU -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BinomialOptionMultiGPU_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BinomialOptionMultiGPU -q -e 

clean:
	rm -rf BinomialOptionMultiGPU
