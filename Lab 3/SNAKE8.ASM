dosseg
.model small
.stack 100h

.data
msg1 db 'Muhammad Affan Kabir$'
msg2 db '65139$'
msg3 db 'BS AI$'

.code

main proc

mov ax,@data
mov ds,ax

; message 1
mov dx,offset msg1
mov ah,9
int 21h

mov dx,10 ; move to new line
mov ah,2
int 21h

mov dx,13 ; mov to start of the line
mov ah,2
int 21h

; message 2
mov dx,offset msg2
mov ah,9
int 21h


mov dx,10 ; move to new line
mov ah,2
int 21h


mov dx,13 ; mov to start of the line
mov ah,2
int 21h


; message 3
mov dx,offset msg3
mov ah,9
int 21h



mov ah,4ch
int 21h
main endp
end main




