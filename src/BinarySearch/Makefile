include ../../Makefile.mk

all: BinarySearch

BinarySearch: BinarySearch.cpp BinarySearch.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BinarySearch
