include ../../Makefile.mk

all: MonteCarloAsianDP

MonteCarloAsianDP: MonteCarloAsianDP.cpp MonteCarloAsianDP.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MonteCarloAsianDP
