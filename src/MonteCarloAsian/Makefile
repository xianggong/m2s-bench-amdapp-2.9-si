include ../../Makefile.mk

all: MonteCarloAsian

MonteCarloAsian: MonteCarloAsian.cpp MonteCarloAsian.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MonteCarloAsian
