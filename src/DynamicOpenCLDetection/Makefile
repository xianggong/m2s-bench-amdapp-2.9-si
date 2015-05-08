include ../../Makefile.mk

all: DynamicOpenCLDetection

DynamicOpenCLDetection: DynamicOpenCLDetection.cpp DynamicOpenCLDetection.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf DynamicOpenCLDetection
