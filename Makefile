# Makefile for compile riscv benchmarks

# set your compiler options
# riscv64-unknown-elf or riscv32-unknown-elf
GCC_PREFIX = riscv64-unknown-elf
GCC_FLAGS = "-march=rv64imac -mabi=lp64 -O1 -fno-builtin-printf -fno-common -mcmodel=medany"

# benchmark_name can be set as follow: 
# HelloWorld Dhrystone CoreMark Embench
benchmark_name ?= HelloWorld

# Targets
all: clean build

clean:
	rm -rf *.riscv *.o *.dump *.hex

build:
	cd ./$(benchmark_name) && ./build $(GCC_PREFIX) $(GCC_FLAGS)


.PHONY: clean build
