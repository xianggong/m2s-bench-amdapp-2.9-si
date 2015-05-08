include ../../Makefile.mk

all: Histogram

Histogram: Histogram.cpp Histogram.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf Histogram
