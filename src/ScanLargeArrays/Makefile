include ../../Makefile.mk

all: ScanLargeArrays

ScanLargeArrays: ScanLargeArrays.cpp ScanLargeArrays.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf ScanLargeArrays
