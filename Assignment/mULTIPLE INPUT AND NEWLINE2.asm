.MODEL SMALL
.STACK 100H
.DATA
    NOTE DB 'ENTER MULTIPLE INPUT:$'

.CODE
MAIN PROC 
    
     MOV AX, @DATA
     MOV DS , AX
    
    
     MOV AH , 9
     LEA DX , NOTE
     INT 21H
     
     
     MOV AH , 2
     MOV DL , 10
     INT 21H
     MOV DL , 0DH
     INT 21H
    
    
    
    
    MOV AH , 1
    INT 21H
    MOV BL , AL
    
    INT 21H
    MOV BH , AL
    
    INT 21H
    MOV CL , AL
    
    MOV AH , 2
    
    MOV DL , 10
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV DL, BL
    INT 21H 
    
    MOV DL , 10
    INT 21H
    MOV DL , 13
    INT 21H
    
    MOV DL , BH
    INT 21H 
    
    MOV DL , 0AH
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV DL , CL
    INT 21H
    
    
    
    EXIT:
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
END MAIN