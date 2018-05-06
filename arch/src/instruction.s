	.file	"instruction.c"
	.text
	.globl	M_OPCODE_SIZE
	.section	.rodata
	.align 4
	.type	M_OPCODE_SIZE, @object
	.size	M_OPCODE_SIZE, 4
M_OPCODE_SIZE:
	.long	4
	.globl	M_REGISTER_SIZE
	.align 4
	.type	M_REGISTER_SIZE, @object
	.size	M_REGISTER_SIZE, 4
M_REGISTER_SIZE:
	.long	8
	.globl	M_WORD_SIZE
	.align 4
	.type	M_WORD_SIZE, @object
	.size	M_WORD_SIZE, 4
M_WORD_SIZE:
	.long	8
	.globl	M_INSTRUCTION_SIZE
	.align 4
	.type	M_INSTRUCTION_SIZE, @object
	.size	M_INSTRUCTION_SIZE, 4
M_INSTRUCTION_SIZE:
	.long	16
	.globl	A_OPCODE_SIZE
	.align 4
	.type	A_OPCODE_SIZE, @object
	.size	A_OPCODE_SIZE, 4
A_OPCODE_SIZE:
	.long	8
	.globl	A_REGISTER_SIZE
	.align 4
	.type	A_REGISTER_SIZE, @object
	.size	A_REGISTER_SIZE, 4
A_REGISTER_SIZE:
	.long	16
	.globl	A_WORD_SIZE
	.align 4
	.type	A_WORD_SIZE, @object
	.size	A_WORD_SIZE, 4
A_WORD_SIZE:
	.long	32
	.globl	A_INSTRUCTION_SIZE
	.align 4
	.type	A_INSTRUCTION_SIZE, @object
	.size	A_INSTRUCTION_SIZE, 4
A_INSTRUCTION_SIZE:
	.long	120
	.globl	OPER_NONE
.LC0:
	.string	""
	.section	.data.rel.ro.local,"aw",@progbits
	.align 16
	.type	OPER_NONE, @object
	.size	OPER_NONE, 16
OPER_NONE:
	.quad	.LC0
	.byte	-1
	.zero	3
	.long	0
	.globl	OPER_NEW
	.section	.rodata
.LC1:
	.string	"new"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_NEW, @object
	.size	OPER_NEW, 16
OPER_NEW:
	.quad	.LC1
	.byte	0
	.zero	3
	.long	1
	.globl	OPER_CP
	.section	.rodata
.LC2:
	.string	"cp"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_CP, @object
	.size	OPER_CP, 16
OPER_CP:
	.quad	.LC2
	.byte	2
	.zero	3
	.long	2
	.globl	OPER_PUSH
	.section	.rodata
.LC3:
	.string	"push"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_PUSH, @object
	.size	OPER_PUSH, 16
OPER_PUSH:
	.quad	.LC3
	.byte	3
	.zero	3
	.long	1
	.globl	OPER_POP
	.section	.rodata
.LC4:
	.string	"pop"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_POP, @object
	.size	OPER_POP, 16
OPER_POP:
	.quad	.LC4
	.byte	4
	.zero	3
	.long	1
	.globl	OPER_LOAD
	.section	.rodata
.LC5:
	.string	"load"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_LOAD, @object
	.size	OPER_LOAD, 16
OPER_LOAD:
	.quad	.LC5
	.byte	5
	.zero	3
	.long	2
	.globl	OPER_SAVE
	.section	.rodata
.LC6:
	.string	"save"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_SAVE, @object
	.size	OPER_SAVE, 16
OPER_SAVE:
	.quad	.LC6
	.byte	6
	.zero	3
	.long	2
	.globl	OPER_ADD
	.section	.rodata
.LC7:
	.string	"add"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_ADD, @object
	.size	OPER_ADD, 16
OPER_ADD:
	.quad	.LC7
	.byte	10
	.zero	3
	.long	2
	.globl	OPER_MULT
	.section	.rodata
.LC8:
	.string	"mult"
	.section	.data.rel.ro.local
	.align 16
	.type	OPER_MULT, @object
	.size	OPER_MULT, 16
OPER_MULT:
	.quad	.LC8
	.byte	11
	.zero	3
	.long	2
	.globl	ALL_OPERS
	.section	.data.rel,"aw",@progbits
	.align 32
	.type	ALL_OPERS, @object
	.size	ALL_OPERS, 64
ALL_OPERS:
	.quad	OPER_NEW
	.quad	OPER_CP
	.quad	OPER_PUSH
	.quad	OPER_POP
	.quad	OPER_LOAD
	.quad	OPER_SAVE
	.quad	OPER_ADD
	.quad	OPER_MULT
	.globl	REGISTER_NONE
	.section	.rodata
	.type	REGISTER_NONE, @object
	.size	REGISTER_NONE, 2
REGISTER_NONE:
	.byte	32
	.byte	-1
	.globl	REGISTER_N
	.type	REGISTER_N, @object
	.size	REGISTER_N, 2
REGISTER_N:
	.byte	78
	.byte	0
	.globl	REGISTER_A
	.type	REGISTER_A, @object
	.size	REGISTER_A, 2
REGISTER_A:
	.byte	65
	.byte	8
	.globl	REGISTER_B
	.type	REGISTER_B, @object
	.size	REGISTER_B, 2
REGISTER_B:
	.byte	66
	.byte	9
	.globl	REGISTER_C
	.type	REGISTER_C, @object
	.size	REGISTER_C, 2
REGISTER_C:
	.byte	67
	.byte	10
	.globl	REGISTER_D
	.type	REGISTER_D, @object
	.size	REGISTER_D, 2
REGISTER_D:
	.byte	68
	.byte	11
	.globl	REGISTER_E
	.type	REGISTER_E, @object
	.size	REGISTER_E, 2
REGISTER_E:
	.byte	69
	.byte	12
	.globl	REGISTER_F
	.type	REGISTER_F, @object
	.size	REGISTER_F, 2
REGISTER_F:
	.byte	70
	.byte	13
	.globl	REGISTER_G
	.type	REGISTER_G, @object
	.size	REGISTER_G, 2
REGISTER_G:
	.byte	71
	.byte	14
	.globl	REGISTER_H
	.type	REGISTER_H, @object
	.size	REGISTER_H, 2
REGISTER_H:
	.byte	72
	.byte	15
	.globl	ALL_REGISTRS
	.section	.data.rel
	.align 32
	.type	ALL_REGISTRS, @object
	.size	ALL_REGISTRS, 72
ALL_REGISTRS:
	.quad	REGISTER_N
	.quad	REGISTER_A
	.quad	REGISTER_B
	.quad	REGISTER_C
	.quad	REGISTER_D
	.quad	REGISTER_E
	.quad	REGISTER_F
	.quad	REGISTER_G
	.quad	REGISTER_H
	.ident	"GCC: (GNU) 7.3.1 20180303 (Red Hat 7.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
