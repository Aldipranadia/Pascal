program fibonacci;

uses crt;

var
        i,j,k,l,bil:integer;

begin
clrscr;
        write('Masukan nilai : ');
        readln(bil);
        i:=0;
        j:=1;
        k:=1;
        l:=1;
        while(l<=bil)do
                begin
                write(k,' ');
                l:=l+1;
                k:=i+j;
                i:=j;
                j:=k;
                end;
readln;
end.


