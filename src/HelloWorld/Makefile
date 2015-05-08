include ../../Makefile.mk

all: HelloWorld

HelloWorld: HelloWorld.cpp HelloWorld.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf HelloWorld
