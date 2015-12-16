include ../../Makefile.mk

all: MatrixMultiplication

MatrixMultiplication: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MatrixMultiplication_Kernels.bin $(M2S_BIN) --si-sim functional ./MatrixMultiplication -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MatrixMultiplication_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MatrixMultiplication -q -e 

clean:
	rm -rf MatrixMultiplication
