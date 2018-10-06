uses crt;

var
        i,j,k:integer;

BEGIN
clrscr;
        i:=1;
        write('Masukan angka yang kamu sukai = ');
        readln(k);
        while (i<=k) do
        begin
                j:=1;
                while(j<=k) do
                begin
                write(' ',k);
                j:=j+1
                end;
                writeln;

        i:=i+1;
        end;
readln;

END.
