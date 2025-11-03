dosseg
.model small
.stack 100h
.data

msg1 db 'Enter a character: $'
msg2 db 0Dh,0Ah,'You entered a vowel!$'
msg3 db 'You entered a Numeric!'
msg4 db 'You entered an Alphabet!'
msg5 db 'You entered a Special Character!'
msg6 db 'Please enter a valid value'


.code

main proc



mov ax, @data
mov ds, ax




mov ah, 09h      ; enter a character
lea dx, msg1
int 21h


mov ah, 01h      ; take character input from user
int 21h


; check if vowel

cmp al, 'A'
je isVowel

cmp al, 'E'
je isVowel

cmp al, 'I'
je isVowel

cmp al, 'O'
je isVowel

cmp al, 'U'
je isVowel

cmp al, 'a'
je isVowel

cmp al, 'e'
je isVowel

cmp al, 'i'
je isVowel

cmp al, 'o'
je isVowel

cmp al, 'u'
je isVowel

jmp endProg





isVowel:

mov ah, 09h      ; you entered a vowel
lea dx, msg2
int 21h


jmp endProg



mov ah, 09h      ; you entered a Numeric
lea dx, msg3
int 21h


mov ah, 09h      ; you entered an alphabet
lea dx, msg4
int 21h


mov ah, 09h      ; you entered a special character
lea dx, msg5
int 21h



mov ah, 09h      ; you entered an invalid input
lea dx, msg6
int 21h










endProg:

mov ah, 4ch
int 21h






main endp
end main


















