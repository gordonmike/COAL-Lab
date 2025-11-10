dosseg
.model small
.stack 100h
.data

msg1 db 10, 13, 'Vowel Character$'
msg2 db 10, 13, 'Consonant Character$'

.code
main proc
mov ax, @data
mov ds, ax

mov ah, 1
int 21h

cmp al, 'A'
je l1

cmp al, 'a'
je l1

cmp al, 'E'
je l1

cmp al, 'e'
je l1

cmp al, 'I'
je l1

cmp al, 'i'
je l1

cmp al, 'O'
je l1


cmp al, 'o'
je l1


cmp al, 'U'
je l1


cmp al, 'u'
je l1

mov dx, offset msg2
mov ah, 9
int 21h

jmp exit

l1:

mov dx, offset msg1
mov ah, 9
int 21h

exit:

mov ah, 4ch
int 21h
main endp
end main




























cmp al, 'E'
je l1













