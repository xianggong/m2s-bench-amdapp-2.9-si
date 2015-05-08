include ../../Makefile.mk

all: DCT

DCT: DCT.cpp DCT.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf DCT
