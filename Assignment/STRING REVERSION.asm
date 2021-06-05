;PUSH,POP 
;STRING REVERSION
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
        MOV CX,0
        INPUT:
            MOV AH , 1
            INT 21H
            
            
            CMP AL,0DH   ;ENTER
            JE PRINT
            
            AND DX , 0
            MOV DL,AL
            PUSH DX 
            INC CX
            JMP INPUT
            
            
        PRINT:
            AND DX ,0
            POP DX
            MOV AH,2
            INT 21H
            LOOP PRINT
            
       EXIT:
           MOV AH,4CH
           INT 21H
           MAIN ENDP
END MAIN
            