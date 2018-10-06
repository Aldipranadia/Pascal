program bil_prima;

uses crt;

var
        bil,i,p:integer;

begin
clrscr;
        write('Masukan bilangan : ');
        readln(bil);
        for i:=1 to bil do
                begin
                if(bil mod i=0)then
                        p:=p+1;
                end;
                if(p=2)then
                        writeln('Bilangan prima')
                else
                        writeln('Bukan Bilangan prima');
readln;
end.