include ../../Makefile.mk

all: BufferImageInterop

BufferImageInterop: BufferImageInterop.cpp BufferImageInterop.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BufferImageInterop
