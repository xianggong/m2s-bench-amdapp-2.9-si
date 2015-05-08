include ../../Makefile.mk

all: DeviceFission

DeviceFission: DeviceFission.cpp DeviceFission.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf DeviceFission
