include ../../Makefile.mk

all: FluidSimulation2D

FluidSimulation2D: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/FluidSimulation2D_Kernels.bin $(M2S_BIN) --si-sim functional ./FluidSimulation2D -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/FluidSimulation2D_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./FluidSimulation2D -q -e 

clean:
	rm -rf FluidSimulation2D
