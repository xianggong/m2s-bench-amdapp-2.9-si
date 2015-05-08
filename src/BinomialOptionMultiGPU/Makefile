include ../../Makefile.mk

all: BinomialOptionMultiGPU

BinomialOptionMultiGPU: BinomialOptionMultiGPU.cpp BinomialOptionMultiGPU.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BinomialOptionMultiGPU
