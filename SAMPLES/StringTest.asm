.model flat,C

_ZN6System6String11constructorEv PROTO C
_ZN6System6String9TryAssignEAc PROTO C
_ZN6System6String6assignEP_ZN6System6String PROTO C
_ZN6System6String10CharactersEv PROTO C
_ZN6System7Console9WriteLineEAc PROTO C
_ZN6System6String10destructorEv PROTO C

.data
$String_0	db	72,0,101,0,108,0,108,0,111,0,32,0,87,0,111,0,114,0,108,0,100,0,33,0,0,0

.code
_Main$=-4
_argc$=8
_argv$=12
_a$=-8
_b$=-12
_ZN7Samples7Program4MainEiAAc PROC C EXPORT
	push ebp
	mov ebp,esp
	sub esp,12
	lea eax,_a$[ebp]
	push eax
	call _ZN6System6String11constructorEv
	add esp,4
	lea eax,_b$[ebp]
	push eax
	call _ZN6System6String11constructorEv
	add esp,4
	lea eax,[offset $String_0]
	push eax
	lea eax,_a$[ebp]
	push eax
	call _ZN6System6String9TryAssignEAc
	add esp,8
	lea eax,_a$[ebp]
	push eax
	lea eax,_b$[ebp]
	push eax
	call _ZN6System6String6assignEP_ZN6System6String
	add esp,8
	lea eax,_b$[ebp]
	push eax
	call _ZN6System6String10CharactersEv
	add esp,4
	push eax
	call _ZN6System7Console9WriteLineEAc
	add esp,4
	xor eax,eax
	push eax
	pop eax
	mov _Main$[ebp],eax
	lea eax,_b$[ebp]
	push eax
	call _ZN6System6String10destructorEv
	add esp,4
	lea eax,_a$[ebp]
	push eax
	call _ZN6System6String10destructorEv
	add esp,4
	mov eax, dword ptr _Main$[ebp]
	mov esp,ebp
	pop ebp
	ret
_ZN7Samples7Program4MainEiAAc ENDP
wmain PROC C EXPORT
	push ebp
	mov ebp,esp    
    push [ebp+12]
    push [ebp+8]
    call _ZN7Samples7Program4MainEiAAc
    add esp,8
	mov esp,ebp
	pop ebp
    ret
wmain ENDP
END
