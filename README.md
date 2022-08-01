# Compile benchmark for RISC-V baremetal

## Support benchmarks
+ [x] HelloWorld
+ [x] Dhrystone
+ [x] [CoreMark](https://github.com/eembc/coremark)
+ [x] [Embench](https://github.com/embench/embench-iot)

## Quick Start
1. 安装RISC-V GCC工具链, 并设置好环境变量  
*install riscv-gnu-toolchain for 32-bit or 64-bit RISC-V and set your environment*

2. 直接运行`make build`编译'HelloWorld'程序  
*Compile 'HelloWorld' program: `make build`*

3. 也可以使用`make build benchmark_name=<test_name>`来编译指定的测试程序  
*Or use `make build benchmark_name=<test_name>` to compile a specified test program*


## Customize
**修改`printf`函数的输出地址**

**修改程序和数据的起始地址**
