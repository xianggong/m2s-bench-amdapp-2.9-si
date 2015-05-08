include ../../Makefile.mk

all: BoxFilter

BoxFilter: BoxFilter.cpp BoxFilter.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BoxFilter
