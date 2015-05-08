include ../../Makefile.mk

all: QuasiRandomSequence

QuasiRandomSequence: QuasiRandomSequence.cpp QuasiRandomSequence.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf QuasiRandomSequence
