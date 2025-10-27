dosseg
.model small
.stack 100h
.data
.code

main proc

mov ah,1
int 21h
sub al,30h   ; input 1 from user
mov bl,al

mov dl,' '
mov ah,2
int 21h


mov dl,'x'   ; prints 'x'
mov ah,2
int 21h


mov dl,' '
mov ah,2
int 21h


mov ah,1   ; input 2 from user
int 21h
sub al,30h
mov cl,al

mov dl,' '
mov ah,2
int 21h

mov dl,'='
mov ah,2
int 21h

mov dl,' '
mov ah,2
int 21h

mov dl,bl
add dl,cl  ; add both inputs
add dl,30h
mov ah,2
int 21h



mov ah,4ch
int 21h
main endp
end main
