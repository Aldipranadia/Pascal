program loopsoal12;

uses crt;

var
        i,j:integer;

begin
clrscr;
        i:=1;
        while(i<=7) do
        begin
                j:=1;
                while(j<=7) do
                begin
                write(' ',j);
                j:=j+1;
                end;
        i:=i+1;
        writeln;
        end;
readln;
end.
