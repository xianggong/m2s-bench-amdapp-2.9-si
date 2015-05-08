include ../../Makefile.mk

all: Mandelbrot

Mandelbrot: Mandelbrot.cpp Mandelbrot.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf Mandelbrot
