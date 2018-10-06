program menetukan_bilprima;

uses crt;

var
        a,b,c,x:integer;

BEGIN
clrscr;
        write('Masukan angka 1 sampai ');
        readln(x);
        for a:=1 to x do
                begin
                c:=0;
                for b:=1 to a do
                        begin
                        if (a mod b=0) then
                        c:=c+1;
                        end;
                                if (c=2) then
                                begin
                                write(a,' ');
                                write('');
                                end;
                end;
readln;
END.

