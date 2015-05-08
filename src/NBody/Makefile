include ../../Makefile.mk

all: NBody

NBody: NBody.cpp NBody.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf NBody
