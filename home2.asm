result: db 0
arr: db [0,10]


def fill {
    mov di, offset arr
    mov cl, 1
    repeat:
        mov byte [di], cl
        inc di inc cl
        cmp cl, 11
        jnz repeat
    ret
}

def summ {
    add al, bl
    mov di, offset result
    mov byte[di], al
    ret
}

start:
    call fill