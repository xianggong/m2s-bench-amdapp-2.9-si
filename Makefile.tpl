M2S_LIBOPENCL = $(M2S_LIB)/libm2s-opencl.so

BENCHMARK_NAME = EXEC_NAME
BENCHMARKS_ROOT = ..

PROGRAM_BINARY_DYNAMIC = $(BENCHMARK_NAME)_dynamic
PROGRAM_BINARY_STATIC = $(BENCHMARK_NAME)_static
KERNEL_SOURCES = $(BENCHMARK_NAME)_Kernels.cl

CURR_PATH=$(PWD)/EXEC_NAME

all: $(PROGRAM_BINARY_STATIC) $(PROGRAM_BINARY_DYNAMIC)

clean:
	rm -f benchmark.ini $(BENCHMARK_NAME) $(PROGRAM_BINARY_DYNAMIC) $(PROGRAM_BINARY_STATIC)

$(PROGRAM_BINARY_STATIC): *.cpp $(M2S_LIBOPENCL)
	$(CXX) $(CFLAGS) *.cpp -o $(PROGRAM_BINARY_STATIC) $(LDFLAGS_STATIC)

$(PROGRAM_BINARY_DYNAMIC): *.cpp $(M2S_LIBOPENCL)
	$(CXX) $(CFLAGS) *.cpp -o $(PROGRAM_BINARY_DYNAMIC) $(LDFLAGS_DYNAMIC)

ini:    
	if [ -a $(BENCHMARK_NAME)_Kernels.bin ]; then echo '$(CURR_PATH)/$(PROGRAM_BINARY_STATIC) --load $(BENCHMARK_NAME)_Kernels.bin -q -e' > benchmark.ini; fi;
	if [ -a $(BENCHMARK_NAME)_Kernels_sched.bin ]; then echo '$(CURR_PATH)/$(PROGRAM_BINARY_STATIC) --load $(BENCHMARK_NAME)_Kernels_sched.bin -q -e' >>benchmark.ini; fi;
	if [ -a $(BENCHMARK_NAME)_Kernels_fusion.bin ]; then echo '$(CURR_PATH)/$(PROGRAM_BINARY_STATIC) --load $(BENCHMARK_NAME)_Kernels_fusion.bin -q -e' >>benchmark.ini; fi;

