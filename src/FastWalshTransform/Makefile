include ../../Makefile.mk

all: FastWalshTransform

FastWalshTransform: FastWalshTransform.cpp FastWalshTransform.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf FastWalshTransform
