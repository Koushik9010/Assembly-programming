CODE SEGMENT
    ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
    ; 
    
    PPIC_C EQU 1FH
    PPIC   EQU 1DH
    PPIB   EQU 1BH
    PPIA   EQU 19H
    ;
    
    ORG 1000H
    MOV AL,10000000B
    OUT PPIC_C,AL
    MOV AL,11111111B
    OUT PPIA,AL              
                  
L1: 
    MOV AL,01000000B ;0
    OUT PPIA,AL
    CALL DELAY 
    
    MOV AL,11111001B ;1
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01101111B  ;2
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01110110B  ;3
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01111011B  ;4
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01111100B  ;5
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01110101B  ;6
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01111101B  ;7
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
    MOV AL,01111111B  ;8
    OUT PPIA,AL
    CALL DELAY
    JMP L1 
    
    MOV AL,01111110B ;9
    OUT PPIA,AL
    CALL DELAY
    JMP L1
    
DELAY:
    MOV CX,1111111111111111B
    
TIMER1:
    NOP
    NOP
    NOP
    NOP
    LOOP TIMER1
    RET
    ;

CODE ENDS
    END
