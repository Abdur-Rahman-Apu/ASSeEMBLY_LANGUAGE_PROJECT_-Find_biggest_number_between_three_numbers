.MODEL SMALL
.STACK 400H
.DATA
     LARGEST DB ?
     SMALLEST DB ?
     MIDDLE  DB ?
     HEAD DB '          *******ENTER THREE NUMBERS BETWEEN 0 TO 9*******$'
     NOTE DB 'ENTER FIRST NUMBER:$'
     NOTE1 DB 'ENTER SECOND NUMBER:$'
     NOTE2 DB 'ENTER THIRD NUMBER:$'
     NOTE3 DB 'LARGEST VALUE:$'
     NOTE4 DB 'MIDDLE VALUE:$'
     NOTE5 DB 'SMALLEST VALUE:$'
     
     NOTE6 DB '          *******WE CAN ARRANGE THREE VALUE AS:******$'
     GREATER DB '>$'
     NOTE7 DB ' AND $'
     NOTE8 DB '***************************************$' 
     NOTE9 DB 'PRINT 0 TO LARGEST VALUE WHICH IS $'
     

.CODE
    MAIN PROC
        
    MOV AX , @DATA   ;DATA SEGMENT INITIALIZE
    MOV DS , AX

    MOV AH,2
    MOV DL , 0AH
    INT 21H              ;NEW LINE
    MOV DL, 0DH
    INT 21H
    
    MOV AH ,9
    LEA DX , HEAD    ;MSG HEAD
    INT 21H
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H 
    
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    
    MOV AH ,9
    LEA DX , NOTE    ;MSG NOTE FIRST NUMBER
    INT 21H
    
   
        
    MOV AH , 1       ;INPUT 1 
    INT 21H
    MOV LARGEST , AL
    
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV AH , 9
    LEA DX , NOTE1   ;MSG SECOND NUMBER
    INT 21H
    
    
    MOV AH , 1
    INT 21H          ;INPUT2
    
       
    CMP LARGEST , AL     ;COMPARE FIRST AND SECOND NUMBER
    JG LEVEL1
    JNG LEVEL2
    JE LEVEL3
    
    LEVEL1:
    MOV SMALLEST , AL
    JMP LEVEL11
    
    LEVEL2:
    MOV BL , LARGEST
    MOV SMALLEST , BL
    MOV LARGEST , AL
    JMP LEVEL11
    
    LEVEL3:
    MOV MIDDLE , AL
    JMP LEVEL11
    
    LEVEL11:
    MOV AH , 2
    
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H 
    
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    
    MOV AH , 9
    LEA DX , NOTE2   ;MSG FOR THIRD NUMBER
    INT 21H
    
    
    MOV AH , 1
    INT 21H          ;INPUT3
    
    
    CMP LARGEST , AL 
    JG LEVEL4
    JNG LEVEL7
    JE LEVEL6
    
    LEVEL4:
    CMP SMALLEST,AL
    JG  LEVEL5 
    JNG LEVEL6
    JE  LEVEL6
    
    LEVEL5:
    MOV CL ,SMALLEST
    MOV MIDDLE , CL
    MOV SMALLEST , AL
    JMP LEVEL9
    
    LEVEL6:
    MOV MIDDLE, AL
    JMP LEVEL9
    
    LEVEL7:
    MOV CL , LARGEST
    MOV MIDDLE , CL
    MOV LARGEST , AL
    JMP LEVEL9
          
    
    

    LEVEL9:
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H 
    
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H 
    
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV AH ,9        ;PRINT LARGEST VALUE
    LEA DX , NOTE3
    INT 21H
    MOV AH ,2
    MOV DL , LARGEST
    INT 21H

    MOV AH , 9
    LEA DX , NOTE7
    INT 21H
    LEA DX , NOTE5
    INT 21H
    MOV AH , 2
    MOV DL , SMALLEST
    INT 21H
    
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    
    MOV AH , 9
    LEA DX , NOTE6
    INT 21H
    
    MOV AH , 2
    MOV DL , 10      ;NEWLINE
    INT 21H
    MOV DL , 0DH
    INT 21H
    
    MOV AH ,2
    MOV DL , LARGEST
    INT 21H
    MOV AH , 9
    LEA DX , GREATER
    INT 21H
    
    MOV AH ,2
    MOV DL , MIDDLE
    INT 21H
    MOV AH , 9
    LEA DX , GREATER
    INT 21H
    
    MOV AH ,2
    MOV DL , SMALLEST
    INT 21H
    MOV AH,2
    MOV DL , 0AH
    INT 21H            ;NEW LINE
    MOV DL, 0DH
    INT 21H 
    
    MOV AH,2
    MOV DL , 0AH
    INT 21H           ;NEW LINE
    MOV DL, 0DH
    INT 21H 
    
    
    
    MOV AH ,9
    LEA DX ,NOTE8     ;***********
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
           
    MOV AH ,9
    LEA DX ,NOTE9     ;PRINT 0 TO LARGEST
    INT 21H
    
    MOV AH,2
    MOV DL, LARGEST
    INT 21H
    MOV DL , 0AH           ;NEW LINE
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH ,9
    LEA DX ,NOTE8     ;***********
    INT 21H
     
    
    MOV AH,2
    MOV DL , 0AH
    INT 21H              ;NEW LINE
    MOV DL, 0DH
    INT 21H 
    MOV CL,30H
    
    WHILE:
        CMP CL,LARGEST
        JG EXIT 
        MOV AH,2
        MOV DL,CL
        INT 21H
        INC CL
        JMP WHILE
    
    EXIT:    
    MOV AH , 4CH
    INT 21H
    MAIN ENDP
END MAIN
