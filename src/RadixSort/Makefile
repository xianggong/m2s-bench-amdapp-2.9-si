include ../../Makefile.mk

all: RadixSort

RadixSort: RadixSort.cpp RadixSort.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf RadixSort
