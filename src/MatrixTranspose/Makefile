include ../../Makefile.mk

all: MatrixTranspose

MatrixTranspose: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MatrixTranspose_Kernels.bin $(M2S_BIN) --si-sim functional ./MatrixTranspose -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MatrixTranspose_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MatrixTranspose -q -e 

clean:
	rm -rf MatrixTranspose
