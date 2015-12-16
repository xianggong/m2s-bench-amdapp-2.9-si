include ../../Makefile.mk

all: MonteCarloAsianDP

MonteCarloAsianDP: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MonteCarloAsianDP_Kernels.bin $(M2S_BIN) --si-sim functional ./MonteCarloAsianDP -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MonteCarloAsianDP_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MonteCarloAsianDP -q -e 

clean:
	rm -rf MonteCarloAsianDP
