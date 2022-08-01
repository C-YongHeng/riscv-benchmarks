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

默认情况下, 打印通过串口实现. 如果你的RISC-V处理器环境支持串口, 那么只需要修改`include/util.h`中的串口基址为你的串口地址即可正常将`printf`函数的打印信息输出到串口.

**修改程序和数据的起始地址**  

默认情况下, 编译得到的二进制代码从地址0处开始存放. 如果你的RISC-V处理器环境中的MEM不是从0开始编址, 那么可以修改`include/link.ld`链接脚本中的起始地址为你需要的地址；如果指令和数据MEM不连续, 那么可以在'.data'之前重新对'.'进行赋值为数据MEM的起始地址.
