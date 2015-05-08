include ../../Makefile.mk

all: KernelLaunch

KernelLaunch: KernelLaunch.cpp KernelLaunch.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf KernelLaunch
