include ../../Makefile.mk

all: TransferOverlap

TransferOverlap: TransferOverlap.cpp TransferOverlap.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf TransferOverlap
