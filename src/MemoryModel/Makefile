include ../../Makefile.mk

all: MemoryModel

MemoryModel: MemoryModel.cpp MemoryModel.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf MemoryModel
