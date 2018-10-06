program looping;

uses crt;

var
        i,j,angka:integer;

begin
clrscr;
        repeat
        writeln('Masukan angka : ');
        readln(angka);
                i:=1;
                while(i<=angka) do
                        begin
                        write(' ',i);
                        i:=i+1;
                        end;
                WRITELN;
        until(angka=0);
        writeln('<><><><><><><><><><>Program Selesai<><><><><><><><><><>');
readln;
end.

