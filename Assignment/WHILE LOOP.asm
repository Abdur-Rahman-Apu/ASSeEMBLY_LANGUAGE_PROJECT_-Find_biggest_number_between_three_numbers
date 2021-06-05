;TAKE INPUT UNTILL USER CLICK ENTER BUTTON
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
    
    
    
    MOV AH ,1 
    INT 21H   ;INPUT FUNCTION
    
                                     ;WHILE THEN CONDITION IF TRUE
                                     ;END LABEL ELSE JMP TO WHILE
    WHILE:
        CMP AL , 0DH
        JE END_WHILE
        
        
        
        MOV AH , 1
        INT 21H
        JMP WHILE
        
    END_WHILE:    
    
    
    EXIT:
    MOV AH , 4CH
    INT 21H
    MAIN ENDP

END MAIN