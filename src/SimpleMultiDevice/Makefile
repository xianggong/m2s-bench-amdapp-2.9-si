include ../../Makefile.mk

all: SimpleMultiDevice

SimpleMultiDevice: SimpleMultiDevice.cpp SimpleMultiDevice.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf SimpleMultiDevice
