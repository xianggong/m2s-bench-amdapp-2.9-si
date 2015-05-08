include ../../Makefile.mk

all: LUDecomposition

LUDecomposition: LUDecomposition.cpp LUDecomposition.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf LUDecomposition
