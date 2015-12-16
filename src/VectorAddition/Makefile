include ../../Makefile.mk

all: VectorAddition

VectorAddition: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/VectorAddition_Kernels.bin $(M2S_BIN) --si-sim functional ./VectorAddition -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/VectorAddition_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./VectorAddition -q -e 

clean:
	rm -rf VectorAddition
