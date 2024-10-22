.org 100h
.model small
.data

msg1 DB 10,13, "Enter Value A: $"
msg2 DB 10,13, "Enter Value B: $"
msg_greater DB 10,13, "Value A is greater than Value B.$"
msg_less DB 10,13, "Value A is less than Value B.$"
msg_equal DB 10,13, "Value A is equal to Value B.$"

.code
main proc 

    ; Print msg1
    mov dx, offset msg1
    mov ah, 9
    int 21h 

    ; Input value A
    mov ah, 1
    int 21h 
    sub al, '0'        ; Convert ASCII to numeric
    mov bl, al        ; Store value A in bl

    ; Print msg2
    mov dx, offset msg2
    mov ah, 9
    int 21h 

    ; Input value B
    mov ah, 1
    int 21h 
    sub al, '0'        ; Convert ASCII to numeric
    mov bh, al        ; Store value B in bh

    ; Compare the values in bl (A) and bh (B)
    cmp bl, bh        ; Compare A (bl) with B (bh)
    jg msg_A_greater  ; Jump if A > B
    jl msg_A_less     ; Jump if A < B

    ; If equal
    mov dx, offset msg_equal
    mov ah, 9
    int 21h 
    jmp exit

msg_A_greater:
    ; Print message for A > B
    mov dx, offset msg_greater
    mov ah, 9
    int 21h 
    jmp exit

msg_A_less:
    ; Print message for A < B
    mov dx, offset msg_less
    mov ah, 9
    int 21h 

exit:
    ; Terminate the program
    mov ah, 4ch
    int 21h

main endp
end main
