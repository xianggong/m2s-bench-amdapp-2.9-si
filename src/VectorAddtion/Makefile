include ../../Makefile.mk

all: VectorAddition

VectorAddition: VectorAddition.c
	$(CXX) $< -m32 $(INC) -o $@ $(LD)

clean:
	rm -rf VectorAddition
