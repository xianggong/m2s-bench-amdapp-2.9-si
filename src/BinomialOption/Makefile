include ../../Makefile.mk

all: BinomialOption

BinomialOption: BinomialOption.cpp BinomialOption.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BinomialOption
