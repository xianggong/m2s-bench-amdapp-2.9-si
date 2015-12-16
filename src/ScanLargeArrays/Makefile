include ../../Makefile.mk

all: ScanLargeArrays

ScanLargeArrays: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/ScanLargeArrays_Kernels.bin $(M2S_BIN) --si-sim functional ./ScanLargeArrays -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/ScanLargeArrays_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./ScanLargeArrays -q -e 

clean:
	rm -rf ScanLargeArrays
