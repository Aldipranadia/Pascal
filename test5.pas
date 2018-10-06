program test;

uses crt;

var
        i,j:integer;

begin
clrscr;
        i:=5;
        j:=1;
        while(i<10)do
                begin
                repeat
                        writeln(i);
                        j:=j+1;
                        write(j);
                until(j=3);
                i:=i+1;
                end;
readln;
end.
