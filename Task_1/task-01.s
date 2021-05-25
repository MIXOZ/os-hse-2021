    .global print_hello
    .extern puts

    .section .rodata
.Lstr_fst:
    .asciz "Welcome, "
.Lstr_lst:
    .asciz ", to the assembly world!"

    .text
print_hello:
    pushq %rdi

    mov   $.Lstr_fst, %rdi
    mov   stdout,     %rsi
    call  fputs

    popq  %rdi
    mov   stdout,     %rsi
    call  fputs

    mov   $.Lstr_lst, %rdi
    call  puts
    ret