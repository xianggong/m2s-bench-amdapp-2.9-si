include ../../Makefile.mk

all: ImageOverlap

ImageOverlap: ImageOverlap.cpp ImageOverlap.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf ImageOverlap
