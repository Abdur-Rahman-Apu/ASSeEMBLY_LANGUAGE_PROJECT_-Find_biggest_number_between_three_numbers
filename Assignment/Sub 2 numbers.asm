.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
        MOV AH , 1
        INT 21H
        MOV CL, AL
        
        
        INT 21H
        MOV BL , AL
        
        SUB CL , BL
        ADD CL , 48
        
        MOV AH , 2
        MOV DL , CL
        INT 21H 
        
        
        
    MOV AH , 4CH
    INT 21H    
        
    MAIN ENDP
END MAIN