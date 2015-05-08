include ../../Makefile.mk

all: BasicDebug

BasicDebug: BasicDebug.cpp BasicDebug.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BasicDebug
