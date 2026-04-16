ORG 8000H
START:  MOV DPTR, #9000H
        MOVX A, @DPTR
        MOV R1, A
        INC DPTR
        MOVX A, @DPTR
        MOV R2, A
        MOV A, R1
        ADD A, R2
        MOV R3, A
        MOV A, R1
        CLR C
        SUBB A, R2
        MOV B, A
        MOV A, R3
        DIV AB
        INC DPTR
        MOVX @DPTR, A
        MOV A, B
        INC DPTR
        MOVX @DPTR, A
END

