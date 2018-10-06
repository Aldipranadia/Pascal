program latihan3;

uses crt;

var
        i,j:integer;

BEGIN
clrscr;
        i:=5;
        while (i>0) do
                begin
                j:=1;
                while (j<=i) do
                        begin
                        write(' ',j);
                        j:=j+1;
                        end;
                        writeln;
                i:=i-1;
                end;
readln;
END.

