.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
        MOV AH , 1
        
        INT 21H
        MOV BL , AL
        
        MOV AH , 2
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        
        
        MOV AH , 1
        INT 21H
        MOV CL , AL
        
        
        
        ADD CL , BL
        SUB CL , 48
        
        
        MOV AH ,2
        
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        
        MOV DL , CL
        INT 21H
        
        EXIT:
        MOV AH , 4CH
        INT 21H
        MAIN ENDP
END MAIN