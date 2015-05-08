include ../../Makefile.mk

all: StringSearch

StringSearch: StringSearch.cpp StringSearch.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf StringSearch
