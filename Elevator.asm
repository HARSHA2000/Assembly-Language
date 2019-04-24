        OUTPUT 2500AD
        ORG 2000H
        MOV DX,0FFE6H
        MOV AL,82H
        OUT DX,AL
        XOR AX,AX
LOOP1:  MOV AL,AH
        OR AL,0F0H
        MOV DX,0FFE0H
        OUT DX,AL
        MOV DX,0FFE2H
LOOP2:  IN AL,DX
        AND AL,0FH
        CMP AL,0FH
        JZ LOOP2
        MOV SI,00H
FINDF:  ROR AL,01H
        JNC FOUND
        INC SI
        JMP SHORT FINDF
FOUND:  MOV AL,[SI]2100H
        CMP AL,AH
        JA GOUP
        JB GODN
CLEAR:  MOV AL,[SI]2104H
        MOV DX,0FFE0H
        OUT DX,AL
        JMP SHORT LOOP1
GOUP:   CALL DELAY
        INC AH
        XCHG AL,AH
        OR AL,0F0H
        MOV DX,0FFE0H
        OUT DX,AL
        AND AL,0FH
        XCHG AH,AL
        CMP AL,AH
        JNZ GOUP
        JMP SHORT CLEAR
GODN:   CALL DELAY
        DEC AH
        XCHG AH,AL
        OR AL,0F0H
        MOV DX,0FFE0H
        OUT DX,AL
        AND AL,0FH
        XCHG AL,AH
        CMP AL,AH
        JNZ GODN
        JMP SHORT CLEAR
DELAY:  MOV CX,0800H
HR1:    LOOP HR1
HR2:    LOOP HR2
        RET
        ORG 2100H
VALUE1: DB 00H,03H,06H,09H
VALUE2: DB 0E0H,0D3H,0B6H,79H
