include ../../Makefile.mk

all: DeviceFission11Ext

DeviceFission11Ext: DeviceFission11Ext.cpp DeviceFission11Ext.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf DeviceFission11Ext
