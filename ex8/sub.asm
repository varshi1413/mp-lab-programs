.ORG 8000H
START:
        MOV R0,#00H
        MOV DPTR,#9000H
        MOVX A,@DPTR
        MOV R1,A
        INC DPTR
        MOVX A,@DPTR
        MOV R2,A
        MOV A,R1
        CLR C
        SUBB A,R2
        INC DPTR
        MOVX @DPTR,A
        JNC L1
        INC DPTR
        MOV A,#01H
        MOVX @DPTR,A
L1:
        INC DPTR
        MOV A,#00H
        MOVX @DPTR,A
END

