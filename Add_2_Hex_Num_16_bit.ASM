.model small
.data
        num1 DW 45F2H
        num2 DW 32ABH
        res DW ?
.code
        mov AX , @data;
        mov DS , AX;
        mov AX , num1;
        mov BX , num2;
        ADD AX , BX;
        mov RES , AX;
        mov AH , 4CH;
        int 21H;
end;

