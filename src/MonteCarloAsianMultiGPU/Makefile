include ../../Makefile.mk

all: MonteCarloAsianMultiGPU

MonteCarloAsianMultiGPU: MonteCarloAsianMultiGPU.cpp MonteCarloAsianMultiGPU.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MonteCarloAsianMultiGPU
