include ../../Makefile.mk

all: Template

Template: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/Template_Kernels.bin $(M2S_BIN) --si-sim functional ./Template -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/Template_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./Template -q -e 

clean:
	rm -rf Template
