program iseng;

uses crt;

var
        i,j:integer;

begin
clrscr;
        write('Masukan bil : ');
        readln(i);
        while(i>0)do
                begin
                j:=1;
                while(j<=i)do
                        begin
                        write('*');
                        j:=j+1;
                        end;
                writeln;
                i:=i-1;
                end;
readln;
end.