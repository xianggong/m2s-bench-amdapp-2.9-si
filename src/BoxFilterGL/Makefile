include ../../Makefile.mk

all: BoxFilterGL

BoxFilterGL: BoxFilterGL.cpp BoxFilterGL.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BoxFilterGL
