include ../../Makefile.mk

all: DwtHaar1D

DwtHaar1D: DwtHaar1D.cpp DwtHaar1D.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf DwtHaar1D
