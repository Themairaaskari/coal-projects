

org 100h               ; Start at address 100h for COM files

.data
msg1 db 10, 13, "Enter a one-digit number: $"
msg_positive db 10, 13, "The number is positive.$"
msg_negative db 10, 13, "The number is negative.$"
msg_zero db 10, 13, "The number is zero.$"
msg_invalid db 10, 13, "Invalid input. Please enter a one-digit number.$"

.code
main:
    ; Print msg1
    mov dx, offset msg1
    mov ah, 9
    int 21h 

    ; Input a character
    mov ah, 1
    int 21h 

    ; Check for negative sign
    cmp al, '-'          
    je read_digit

    ; Check if it's a valid digit (0-9)
    cmp al, '0'          
    jb invalid_input      
    cmp al, '9'          
    ja invalid_input      

    ; Convert ASCII to numeric
    sub al, '0'          

    ; Check if the number is zero
    cmp al, 0            
    je number_is_zero     

    ; Positive number
    mov dx, offset msg_positive
    jmp print_msg

read_digit:
    ; Read the next character
    mov ah, 1
    int 21h 
    cmp al, '0'          
    jb invalid_input      
    cmp al, '9'          
    ja invalid_input      
    jmp print_negative    

print_negative:
    ; Print message for negative number
    mov dx, offset msg_negative
    jmp print_msg

number_is_zero:
    ; Print message for zero
    mov dx, offset msg_zero

print_msg:
    mov ah, 9
    int 21h 
    jmp exit

invalid_input:
    ; Print invalid input message
    mov dx, offset msg_invalid
    mov ah, 9
    int 21h 

exit:
    ; Terminate the program
    mov ah, 4ch
    int 21h

end main              ; End of the program
