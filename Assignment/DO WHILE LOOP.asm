;REPEAT UNTILL    OR DO CONDITION LOOP

.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
        
        DO:
           MOV AH , 1
           INT 21H
           CMP AL , ' '
           JNE DO
           
           
    
    
    EXIT:
    MOV AH , 4CH
    INT 21H
    MAIN ENDP

END MAIN