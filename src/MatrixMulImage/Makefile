include ../../Makefile.mk

all: MatrixMulImage

MatrixMulImage: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MatrixMulImage_Kernels.bin $(M2S_BIN) --si-sim functional ./MatrixMulImage -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MatrixMulImage_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MatrixMulImage -q -e 

clean:
	rm -rf MatrixMulImage
