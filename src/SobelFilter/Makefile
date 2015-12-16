include ../../Makefile.mk

all: SobelFilter

SobelFilter: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/SobelFilter_Kernels.bin $(M2S_BIN) --si-sim functional ./SobelFilter -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/SobelFilter_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./SobelFilter -q -e 

clean:
	rm -rf SobelFilter
