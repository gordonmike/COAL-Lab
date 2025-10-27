dosseg
.model small
.stack 100h
.data
.code

main proc

mov cx,26    ; A to Z  (start)
mov dx,65

l1:
mov ah,2
int 21h
add dx,1
Loop l1       ; A to Z (end)


mov dx,10     ; new line
mov ah,2
int 21h



mov cx,26     ; a to z (start)
mov dx,97

l2:
mov ah,2
int 21h
add dx,1
Loop l2       ; a to z (end)


mov dx,10     ; new line
mov ah,2
int 21h


mov ah,4ch
int 21h
main endp
end main
