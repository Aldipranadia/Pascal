program coba_while;

uses crt;

var
        i,j,bil:integer;

begin
clrscr;
        write('Masukan bilangan : ');
        readln(bil);
        i:=1;
        while i<=bil do
                begin
                j:=1;
                        while j<=i do
                                begin
                                write('*');
                                j:=j+1;
                                end;
                                writeln;
                                i:=i+1;
                end;
readln;
end.
