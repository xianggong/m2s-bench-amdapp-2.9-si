include ../../Makefile.mk

all: FloydWarshall

FloydWarshall: FloydWarshall.cpp FloydWarshall.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf FloydWarshall
