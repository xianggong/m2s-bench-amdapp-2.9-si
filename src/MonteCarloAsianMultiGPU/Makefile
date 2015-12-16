include ../../Makefile.mk

all: MonteCarloAsianMultiGPU

MonteCarloAsianMultiGPU: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/MonteCarloAsianMultiGPU_Kernels.bin $(M2S_BIN) --si-sim functional ./MonteCarloAsianMultiGPU -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/MonteCarloAsianMultiGPU_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./MonteCarloAsianMultiGPU -q -e 

clean:
	rm -rf MonteCarloAsianMultiGPU
