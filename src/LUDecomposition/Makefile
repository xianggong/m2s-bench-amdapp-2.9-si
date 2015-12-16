include ../../Makefile.mk

all: LUDecomposition

LUDecomposition: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/LUDecomposition_Kernels.bin $(M2S_BIN) --si-sim functional ./LUDecomposition -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/LUDecomposition_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./LUDecomposition -q -e 

clean:
	rm -rf LUDecomposition
