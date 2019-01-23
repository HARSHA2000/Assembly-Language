 .model small
 .stack 100
 .code
        mov AL , 22H;
        mov BL , 11H;
        ADD AL , BL;
        mov CL , AL;
        int 3H;

 end;

