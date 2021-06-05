.MODEL SMALL
.STACK 100H
.DATA
    UNIVERSITY DB 'DIU$'
    CAMPUS DB 'MAIN$'
    
.CODE
    MAIN PROC
        MOV AX , @DATA
        MOV DS , AX   ;DATA SEGMENT INITIALIZE FOR STRING
        
        MOV AH ,9
        LEA DX , UNIVERSITY
        
        INT 21H
        
        
        
        MOV AH , 2
        MOV DL , 0AH
        INT 21H
        
        MOV DL , 0DH
        INT 21H   
        
        MOV AH , 9
        LEA DX , CAMPUS
        
        INT 21H
        
        
        EXIT:
        MOV AH , 4CH
        INT 21H
        MAIN ENDP
END MAIN