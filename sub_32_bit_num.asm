.model small
.stack 100
.data
        L1 DW 45F2H;
        H1 DW 897BH;
        L2 DW 32ABH;
        H2 DW 123CH;
        resL DW ?;
        resH DW ?;
.code
        mov AX , @data;
        mov DS , AX;
        mov AX , L1;
        mov BX , L2;
        sub AX , BX;
        mov resL , AX;
        mov AX , H1;
        mov BX , H2;
        sbb AX , BX;
        mov resH , AX;
        mov AH , 4CH;
        int 21H;
        
end
