
OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x20080000;
  .text.entry . : { *(.text.entry) }
  .text . : { *(.text) }
  .data . : { *(.*data) *(.rodata*) *(.srodata*) }
  .bss : { *(.bss) }
  _end = .;
}
