include ../../Makefile.mk

all: ImageBandwidth

ImageBandwidth: ImageBandwidth.cpp ImageBandwidth.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf ImageBandwidth
