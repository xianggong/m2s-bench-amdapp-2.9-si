include ../../Makefile.mk

all: MatrixMultiplication

MatrixMultiplication: MatrixMultiplication.cpp MatrixMultiplication.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MatrixMultiplication
