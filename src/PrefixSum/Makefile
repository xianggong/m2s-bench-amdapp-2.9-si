include ../../Makefile.mk

all: PrefixSum

PrefixSum: PrefixSum.cpp PrefixSum.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf PrefixSum
