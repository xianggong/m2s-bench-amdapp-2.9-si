include ../../Makefile.mk

all: BinomialOption

BinomialOption: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BinomialOption_Kernels.bin $(M2S_BIN) --si-sim functional ./BinomialOption -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BinomialOption_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BinomialOption -q -e 

clean:
	rm -rf BinomialOption
