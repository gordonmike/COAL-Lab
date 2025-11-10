dosseg
.model small
.stack 100h
.data


msgalphabet db 10, 13, 'The input is an Alphabet$'
msgnumber db 10, 13, 'The input is a number$'
msgspecial db 10, 13, 'The input is a Special Character$'


.code
main proc

mov ax, @data
mov ds, ax


mov ah, 1
int 21h

cmp al, 'A'
jl check_number

cmp al, 'Z'
jle is_alpha

cmp al, 'a'
jl check_number

cmp al, 'z'
jle is_alpha





check_number:

cmp al, '0'
jl is_special

cmp al, '9'
jle is_number






is_special:

mov dx, offset msgspecial
mov ah, 09h
int 21h
jmp exit





is_alpha:

mov dx, offset msgalphabet
mov ah, 09h
int 21h
jmp exit






is_number:

mov dx, offset msgnumber
mov ah, 09h
int 21h
jmp exit






exit:

mov ah, 4ch
int 21h

main endp
end main
















































































