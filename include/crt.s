.file	"crt.s"

	.section ".text.entry"
	.global _start
	.extern main

_start:
	la tp, _end + 63
	and tp, tp, -64
	add sp, x0, 1
	# set stack size to 8K
	sll sp, sp, 13
	add sp, sp, tp
	add tp, x0, 0
	call main
	j _finish

_finish:
    beq x0, x0, _finish


