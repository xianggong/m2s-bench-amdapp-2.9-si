include ../../Makefile.mk

all: SobelFilter

SobelFilter: SobelFilter.cpp SobelFilter.hpp
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf SobelFilter
