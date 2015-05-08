include ../../Makefile.mk

all: SimpleConvolution

SimpleConvolution: SimpleConvolution.cpp SimpleConvolution.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf SimpleConvolution
