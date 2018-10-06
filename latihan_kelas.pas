program latihan_kelas;

uses crt;

var
        i,j:integer;

BEGIN
clrscr;
        i:=1;
        while (i<=5) do
        begin
                j:=1;
                while(j<=5) do
                begin
                write(' ',1);
                j:=j+1
                end;
                writeln;

        i:=i+1;
        end;
readln;

END.

