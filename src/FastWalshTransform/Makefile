include ../../Makefile.mk

all: FastWalshTransform

FastWalshTransform: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/FastWalshTransform_Kernels.bin $(M2S_BIN) --si-sim functional ./FastWalshTransform -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/FastWalshTransform_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./FastWalshTransform -q -e 

clean:
	rm -rf FastWalshTransform
