SUBDIRS = \
	AtomicCounters \
	BasicDebug \
	BinarySearch \
	BinomialOption \
	BinomialOptionMultiGPU \
	BitonicSort \
	BlackScholes \
	BlackScholesDP \
	BoxFilter \
	DCT \
	DeviceFission11Ext \
	DwtHaar1D \
	FastWalshTransform \
	FloydWarshall \
	HelloWorld \
	Histogram \
	LUDecomposition \
	MatrixMultiplication \
	MatrixTranspose \
	MemoryModel \
	MonteCarloAsian \
	MonteCarloAsianDP \
	MonteCarloAsianMultiGPU \
	PrefixSum \
	QuasiRandomSequence \
	RadixSort \
	RecursiveGaussian \
	Reduction \
	ScanLargeArrays \
	SimpleConvolution \
	SimpleMultiDevice \
	SobelFilter \
	StringSearch \
	Template \
	URNG \
	VectorAddition

all: premake

M2S_ROOT = $(PWD)/../multi2sim
M2S_LIB = $(M2S_ROOT)/lib/.libs
M2S_BIN = $(M2S_ROOT)/bin
M2S_INCLUDE = $(M2S_ROOT)/runtime/include

CFLAGS = "-I../include -I../include/SDKUtil -I. -I$(M2S_INCLUDE) -g"
LDFLAGS_STATIC = "-L$(M2S_LIB) -lm2s-opencl -lpthread -ldl -lrt -static -m32"
LDFLAGS_DYNAMIC = "-L$(M2S_LIB) -lm2s-opencl -lpthread -ldl -lrt -m32"

clean:
	for subdir in $(SUBDIRS); do \
		make -C $$subdir clean || exit 1; \
	done

premake:
	make -C $(M2S_ROOT)/runtime/opencl
	for subdir in $(SUBDIRS); do \
		make -C $$subdir \
			M2S_ROOT=$(M2S_ROOT) \
			M2S_LIB=$(M2S_LIB) \
			M2S_BIN=$(M2S_BIN) \
			M2S_INCLUDE=$(M2S_INCLUDE) \
			CFLAGS=$(CFLAGS) \
			LDFLAGS_STATIC=$(LDFLAGS_STATIC) \
			LDFLAGS_DYNAMIC=$(LDFLAGS_DYNAMIC) \
			|| exit 1; \
	done
