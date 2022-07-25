# Makefile for compile riscv benchmarks

# set your compiler options
# riscv64-unknown-elf or riscv32-unknown-elf
GCC_PREFIX = riscv64-unknown-elf
GCC_FLAGS = "-march=rv64imc -O3 -static -fno-builtin-printf -fno-common -mcmodel=medany -nostdlib"

# benchmark_name can be set as follow: 
# HelloWorld Dhrystone CoreMark 
# Embench/aha-mont64 Embench/crc32 Embench/cubic Embench/edn Embench/huffbench Embench/matmult-int Embench/minver Embench/nbody Embench/nettle-aes Embench/nettle-sha256 Embench/nsichneu Embench/picojpeg Embench/qrduino Embench/sglib-combined Embench/slre Embench/st Embench/statemate Embench/ud Embench/wikisort
benchmark_name ?= HelloWorld

# Targets
all: clean build

clean:
	rm -rf *.riscv *.o *.dump *.hex

build:
	cd ./$(benchmark_name) && ./build $(GCC_PREFIX) $(GCC_FLAGS)


.PHONY: clean build
