include ../../Makefile.mk

all: RecursiveGaussian

RecursiveGaussian: RecursiveGaussian.cpp RecursiveGaussian.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf RecursiveGaussian
