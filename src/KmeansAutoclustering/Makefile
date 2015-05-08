include ../../Makefile.mk

all: KmeansAutoclustering

KmeansAutoclustering: KmeansAutoclustering.cpp KmeansAutoclustering.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf KmeansAutoclustering
