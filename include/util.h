#ifndef __UTIL_H
#define __UTIL_H

#define UART0_ADDRESS  0x40000000ULL


#define static_assert(cond) switch(0) { case 0: case !!(long)(cond): ; }

#ifdef __riscv
#include "encoding.h"
#endif

#endif // __UTIL_H