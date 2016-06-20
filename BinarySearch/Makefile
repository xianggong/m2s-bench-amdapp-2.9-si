include $(CURDIR)/size 

M2S_LIBOPENCL = $(M2S_LIB)/libm2s-opencl.so

BENCHMARK_NAME = BinarySearch
BENCHMARKS_ROOT = ..

PROGRAM_BINARY_DYNAMIC = $(BENCHMARK_NAME)_dynamic
PROGRAM_BINARY_STATIC = $(BENCHMARK_NAME)_static
KERNEL_SOURCES = $(BENCHMARK_NAME)_Kernels.cl
KERNEL_BINARYS = $(wildcard *.bin)

all: $(PROGRAM_BINARY_STATIC) $(PROGRAM_BINARY_DYNAMIC)

clean:
	rm -f benchmark.ini $(BENCHMARK_NAME) $(PROGRAM_BINARY_DYNAMIC) $(PROGRAM_BINARY_STATIC)

$(PROGRAM_BINARY_STATIC): *.cpp $(M2S_LIBOPENCL)
	$(CXX) $(CFLAGS) *.cpp -o $(PROGRAM_BINARY_STATIC) $(LDFLAGS_STATIC)

$(PROGRAM_BINARY_DYNAMIC): *.cpp $(M2S_LIBOPENCL)
	$(CXX) $(CFLAGS) *.cpp -o $(PROGRAM_BINARY_DYNAMIC) $(LDFLAGS_DYNAMIC)

ini:    
	rm -f benchmark.ini
	if [ -n "$(SIZE)" ]; then \
		for binary in $(KERNEL_BINARYS); do \
			echo "$$binary"; \
			echo "$(CURDIR)/$(PROGRAM_BINARY_STATIC) --load $$binary -q -e -x $(SIZE)" >> benchmark.ini; \
		done; \
	fi;\
	
