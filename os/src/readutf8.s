.section .rodata
asd: .ascii "Hi, there\n"

.section .text
.globl main

main:
mov $60, %rax
mov $3,  %rdi
syscall
