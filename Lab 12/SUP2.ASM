dosseg
.model small
.stack 100h

.data

even db 13, 10 'Even Number$'
odd db 13, 10 'Odd Number$

.code
main proc
mov ax, @data4mov ds, ax

mov ah, 1
int 21h
mov bl, 2
div bl
