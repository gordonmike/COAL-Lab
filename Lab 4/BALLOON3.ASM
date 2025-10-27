dosseg
.model small
.stack 100h
.data

msg1 db 'number is equal$'
msg2 db 'number is not equal$'

.code
main proc

mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h
mov cl,al

cmp bl,cl


je move

mov dx,offset msg2
mov ah,9
int 21h
mov ah,4ch
int 21h

move:

mov dx,offset msg1
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main


















