include ../../Makefile.mk

all: DynamicOpenCLDetection

DynamicOpenCLDetection: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/DynamicOpenCLDetection_Kernels.bin $(M2S_BIN) --si-sim functional ./DynamicOpenCLDetection -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/DynamicOpenCLDetection_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./DynamicOpenCLDetection -q -e 

clean:
	rm -rf DynamicOpenCLDetection
