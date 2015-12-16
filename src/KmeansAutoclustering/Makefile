include ../../Makefile.mk

all: KmeansAutoclustering

KmeansAutoclustering: *.cpp *.hpp
	$(CXX) $? -m32 $(INC) -o $@ $(LD)

run:
	M2S_OPENCL_BINARY=$(PWD)/KmeansAutoclustering_Kernels.bin $(M2S_BIN) --si-sim functional ./KmeansAutoclustering -q -e 

optrun:
	M2S_OPENCL_BINARY=$(PWD)/KmeansAutoclustering_Kernels.opt.bin $(M2S_BIN) --si-sim functional ./KmeansAutoclustering -q -e 

clean:
	rm -rf KmeansAutoclustering
