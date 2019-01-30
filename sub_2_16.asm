.model small
.stack 100
.data
        num1 DW 2234H;
        num2 DW 1112H;
        res DW ?;
.code
        mov AX , @data;
        mov DS , AX;
        mov AX , num1;
        mov BX , num2;
        sub AX , BX;
        mov res , AX;
        mov AH , 4CH;
        int 21H;
end
