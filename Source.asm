.686
.model flat,stdcall
.stack 100h
.data
X dw -13;
Y dw 26;
Z dw 15;
Z_ dw ?;
M dw 0;
.code
ExitProcess PROTO STDCALL :DWORD
Start:
;Сдвиг на 3 бита влево
mov ax, Z
shl ax, 3 
mov Z_, ax
;Вычисление выражения
mov ax, Z_
mov bx, 5
mul bx
sub ax, X
inc ax
mov bx, X
mov M, ax
exit:
Invoke ExitProcess,1
End Start