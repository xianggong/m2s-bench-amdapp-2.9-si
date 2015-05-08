include ../../Makefile.mk

all: URNG

URNG: URNG.cpp URNG.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf URNG
