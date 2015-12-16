include ../../Makefile.mk

all: TransferOverlap

TransferOverlap: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/TransferOverlap_Kernels.bin $(M2S_BIN) --si-sim functional ./TransferOverlap -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/TransferOverlap_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./TransferOverlap -q -e 

clean:
	rm -rf TransferOverlap
