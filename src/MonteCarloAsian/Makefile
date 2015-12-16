include ../../Makefile.mk

all: MonteCarloAsian

MonteCarloAsian: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MonteCarloAsian_Kernels.bin $(M2S_BIN) --si-sim functional ./MonteCarloAsian -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MonteCarloAsian_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MonteCarloAsian -q -e 

clean:
	rm -rf MonteCarloAsian
