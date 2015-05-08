include ../../Makefile.mk

all: Reduction

Reduction: Reduction.cpp Reduction.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf Reduction
