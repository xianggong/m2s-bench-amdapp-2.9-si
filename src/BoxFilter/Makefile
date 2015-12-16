include ../../Makefile.mk

all: BoxFilter

BoxFilter: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/BoxFilter_Kernels.bin $(M2S_BIN) --si-sim functional ./BoxFilter -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/BoxFilter_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./BoxFilter -q -e 

clean:
	rm -rf BoxFilter
