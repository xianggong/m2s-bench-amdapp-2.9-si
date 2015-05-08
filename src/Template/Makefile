include ../../Makefile.mk

all: Template

Template: Template.cpp Template.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf Template
