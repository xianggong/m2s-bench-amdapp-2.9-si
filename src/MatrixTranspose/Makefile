include ../../Makefile.mk

all: MatrixTranspose

MatrixTranspose: MatrixTranspose.cpp MatrixTranspose.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MatrixTranspose
