program nested_loop;

uses crt;

var
        i,j,bil:integer;

begin
clrscr;
        write('Masukan bil : ');
        readln(bil);
        for i:=1 to bil do
                begin
                        for j:=1 to i do
                        begin
                        write('*');
                        end;
                        writeln;
                end;
readln;
end.