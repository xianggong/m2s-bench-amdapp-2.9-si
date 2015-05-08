include ../../Makefile.mk

all: AtomicCounters

AtomicCounters: AtomicCounters.cpp AtomicCounters.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf AtomicCounters
