program looping_dalam_looping;

uses crt;

var
        i,j:integer;

begin
clrscr;
        i:=0;
        while (i<5) do
                begin
                j:=0;
                while (j<5) do
                        begin
                        write('*');
                        j:=j+1;
                        end;
                i:=i+1;
                writeln;
                end;

readln;
end.

