include ../../Makefile.mk

all: BufferBandwidth

BufferBandwidth: BufferBandwidth.cpp BufferBandwidth.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BufferBandwidth
