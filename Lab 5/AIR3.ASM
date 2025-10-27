dosseg
.model small
.stack 100h


.data
msg1 db 'Find even and odd numbers:$'
msg2 db 'Even = $'
msg3 db 'Odd = $'


.code
main proc

mov ax, @data
mov ds, ax

mov dx, offset msg1   ; print  message 1
mov ah,9              ; //
int 21h               ; //



mov dx,10             ; newline
mov ah,2
int 21h



mov dx, offset msg2   ; print  message 2
mov ah,9              ; //
int 21h               ; //




mov cx, 5        ; CX Register
mov dx,48

l1:          ; print even
mov ah,2
int 21h
add dx,2
Loop l1




mov dx,10             ; newline
mov ah,2
int 21h



mov dx, offset msg3   ; print  message 3
mov ah,9              ; //
int 21h               ; //



mov cx,5
mov dx,49    ; print odd
l2:
mov ah,2
int 21h
add dx,2
Loop l2


mov dx,10             ; newline
mov ah,2
int 21h



mov ah,4ch
int 21h
main endp
end main
