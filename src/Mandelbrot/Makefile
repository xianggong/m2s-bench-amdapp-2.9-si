include ../../Makefile.mk

all: Mandelbrot

Mandelbrot: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/Mandelbrot_Kernels.bin $(M2S_BIN) --si-sim functional ./Mandelbrot -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/Mandelbrot_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./Mandelbrot -q -e 

clean:
	rm -rf Mandelbrot
