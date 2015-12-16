include ../../Makefile.mk

all: FloydWarshall

FloydWarshall: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/FloydWarshall_Kernels.bin $(M2S_BIN) --si-sim functional ./FloydWarshall -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/FloydWarshall_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./FloydWarshall -q -e 

clean:
	rm -rf FloydWarshall
