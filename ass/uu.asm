NULL EQU 0
STD_OUTPUT_HANDLE EQU -11

extern _GetStdHandle@4
extern _WriteFile@20
extern _ExitProcess@4

  global  _start



global  _printDec


        
        section .data
a       dd      0
b       dd      2
c       dd      3
iter    dd      100000000
i       dd      0

section .bss
   StandardHadle   resd    1
   Written resd 1

section .text

_start: 
        push STD_OUTPUT_HANDLE
        call _GetStdHandle@4
        mov dword [StandardHadle], eax

        push    NULL
        mov     edx, 0          ; use edx as i
        mov     ebx, dword[b]   ; use ebx as 2*b + c
        add     ebx, ebx
        add     ebx, dword[c]
        mov     eax, 0          ; use eax as a
        mov     ecx, dword[iter]; ecx is loop counter
        
for:    add     eax, ebx        ; a += b*2 + c
        sub     eax, edx        ; a += -i
        inc     edx             ; i++
        loop    for
        
endfor: 
        mov     dword[a], eax
        call    _printDec
        
        
;;; exit
        push NULL
        call _ExitProcess@4
        


_printDec:
;;; saves all the registers so that they are not changed by the function


                section         .bss

.decstr         resb            10
.ct1            resd            1  ; to keep track of the size of the strin




                section .text
                pushad                          ; save all registers
                mov             dword[.ct1],0   ; assume initially 0
                mov             edi,.decstr     ; edi points to decstring
                add             edi,9           ; moved to the last element of string
                xor             edx,edx         ; clear edx for 64-bit division
.whileNotZero:
                mov             ebx,10          ; get ready to divide by 10
                div             ebx             ; divide by 10
                add             edx,'0'         ; converts to ascii char
                mov             byte[edi],dl    ; put it in sring
                dec             edi             ; mov to next char in string
                inc             dword[.ct1]     ; increment char counter
                xor             edx,edx         ; clear edx
                cmp             eax,0           ; is remainder of division 0?
                jne             .whileNotZero   ; no, keep on looping

                inc             edi             ; conversion, finish, bring edi
                mov             ecx, edi        ; back to beg of string. make ecx
                mov             edx, [.ct1]     ; point to it, and edx gets # chars

                push NULL
                push Written
                push edx
                push ecx
                push  dword [StandardHadle]
                call _WriteFile@20

                popad                           ; restore all registers

                ret