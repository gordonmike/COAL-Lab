dosseg
.model small
.stack 100h


.data
msg1 db 'Number is Even.$'
msg2 db 'Number is Odd.$'


.code
main proc

mov ax, @data
mov ds, ax




mov ah,1
int 21h
mov bl,2
div bl
cmp ah,0
je evven



mov dx,10             ; newline
mov ah,2
int 21h



mov dx, offset msg2   ; print  message 2
mov ah,9              ; //
int 21h               ; //

mov ah,4ch            ; exit
int 21h



evven:


mov dx,10             ; newline
mov ah,2
int 21h



mov dx, offset msg1   ; print  message 1
mov ah,9              ; //
int 21h               ; //



mov dx,10             ; newline
mov ah,2
int 21h



mov ah,4ch
int 21h
main endp
end main
