;; This is a dumb contrived program _ mariari 2023

;; Ed Jorgensen
;; July 18, 2014
section .data

        ;;  constants

        EXIT_SUCCESS    equ     0  ; successful operation
        SYS_EXIT        equ     60 ; call for termination

        ;; byte declarations

        b_var1          db      17
        b_var2          db      9
        b_result        db      0

        ;; Word declarations
        ;; Why...

        w_var1          dw      17000
        w_var2          dw      9000
        w_result        dw      0

        ;; Double Word declarations
        ;; Why...

        d_var1          dd      17000000
        d_var2          dd      9000000
        d_result        dd      0


        ;; quad word
        q_var1          dq     1700000
        q_var2          dq     800000
        q_result        dq     0


section .text

global _start

_start:
        mov     al, byte [b_var1]
        add     al, byte [b_var2]
        mov     byte [b_result], al

        mov     ax, word [w_var1]
        add     ax, word [w_var2]
        mov     word [w_result], ax


        mov     rax, SYS_EXIT
        mov     rdi, [w_result]
        syscall
