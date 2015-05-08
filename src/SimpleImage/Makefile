include ../../Makefile.mk

all: SimpleImage

SimpleImage: SimpleImage.cpp SimpleImage.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf SimpleImage
