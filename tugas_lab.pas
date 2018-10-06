program bintang;

uses crt;

var
        i,j:integer;

begin
clrscr;
        i:=5;
        while(i>=0)do
                begin
                        j:=0;
                        while(j<=i)do
                        begin
                        write('*');
                        j:=j+1;
                        end;
                i:=i-1;
                writeln;
                end;

readln;
end.
