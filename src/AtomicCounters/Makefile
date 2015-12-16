include ../../Makefile.mk

all: AtomicCounters

AtomicCounters: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/AtomicCounters_Kernels.bin $(M2S_BIN) --si-sim functional ./AtomicCounters -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/AtomicCounters_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./AtomicCounters -q -e 

clean:
	rm -rf AtomicCounters
