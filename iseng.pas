program bilangan;

uses crt;

var
        bil,i,j:integer;

begin
clrscr;
        write('Masukan Bilangan : ');
        readln(bil);
        i:=1;
        j:=1;
        while(i<=bil)do
                begin
                write(j,' ');
                j:=j+2;
                i:=i+1;
                end;

readln;
end.