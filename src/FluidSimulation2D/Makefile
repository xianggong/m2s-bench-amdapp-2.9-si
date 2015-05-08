include ../../Makefile.mk

all: FluidSimulation2D

FluidSimulation2D: FluidSimulation2D.cpp FluidSimulation2D.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf FluidSimulation2D
