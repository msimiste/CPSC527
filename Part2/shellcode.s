        section .data		; Data section, initialized variables

        section .text           ; Code section.

        global main		; the standard gcc entry point
main:				; the program label for the entry point
    mov rax, 59                 ;syscall = execve
    xor rcx, rcx                ;arg4 = NULL
    xor rdx, rdx                ;arg3 = NULL
    xor rsi, rsi                ;arg2 = NULL
    ;mov rdi, '/bin/sh'          ;arg1 = command
    mov rdi, 0x7ffff7b99673
    ;mov rdi, [rdi]
    ;push rsi                    ;stack = NULL
    ;push rdi                    ;stack = command+NULL
    ;push rsp                    ;stack = pointer to command+NULL
    ;pop rdi                     ;arg1 = pointer to command+NULL
    syscall
