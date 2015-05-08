include ../../Makefile.mk

all: BlackScholes

BlackScholes: BlackScholes.cpp BlackScholes.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf BlackScholes
