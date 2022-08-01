
OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x00000000;
  .text.entry . : { *(.text.entry) }
  .text . : { *(.text) }
  .data . : { *(.*data) *(.rodata*) *(.srodata*) }
  .bss : { *(.bss) }
  _end = .;
}
