        OUTPUT 2500AD
        ORG 2000H
START: MOV AL,80H
        MOV DX,0FFE6H
        OUT DX,AL
AGAIN:  MOV SI,2038H
NEXTST: MOV AL,[SI]
        MOV DX,0FFE0H
        OUT DX,AL
        INC SI
        ADD DX,2
        MOV AL,[SI]
        OUT DX,AL
        INC SI
        ADD DX,2
        MOV AL,[SI]
        OUT DX,AL
        INC SI
        CALL DELAY
        CMP SI,2056H
        JNZ NEXTST
        JMP AGAIN
DELAY:  MOV CX,0FFH
DLY5:   PUSH CX
        MOV CX,03FFH
DLY10:  NOP
        LOOP DLY10
        POP CX
        LOOP DLY5
        RET
        ORG 2038H
PORTVALUES: DB 10H,81H,7AH
            DB 44H,44H,0F0H
            DB 08H,11H,0E5H
            DB 44H,44H,0F0H
            DB 81H,10H,0DAH
            DB 44H,44H,0F0H
            DB 11H,08H,0B5H
            DB 44H,44H,0F0H
            DB 88H,88H,00H
            DB 44H,44H,0F0H
            DB 00H

