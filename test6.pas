program test;

uses crt;

var
        i,k:integer;

begin
clrscr;
        for i:=1 to 5 do
                begin
                k:=1;
                while(k<5)do
                        begin
                        write(i,' ',k);
                        k:=k+1;
                        end;
                writeln;
                end;
readln;
end.