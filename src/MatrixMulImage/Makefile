include ../../Makefile.mk

all: MatrixMulImage

MatrixMulImage: MatrixMulImage.cpp MatrixMulImage.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MatrixMulImage
