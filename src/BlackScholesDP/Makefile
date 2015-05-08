include ../../Makefile.mk

all: BlackScholesDP

BlackScholesDP: BlackScholesDP.cpp BlackScholesDP.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BlackScholesDP
