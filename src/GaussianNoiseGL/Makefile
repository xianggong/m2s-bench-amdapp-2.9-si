include ../../Makefile.mk

all: GaussianNoiseGL

GaussianNoiseGL: GaussianNoiseGL.cpp GaussianNoiseGL.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf GaussianNoiseGL
