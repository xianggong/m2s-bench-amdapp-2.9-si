include ../../Makefile.mk

all: SimpleGL

SimpleGL: SimpleGL.cpp SimpleGL.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf SimpleGL
