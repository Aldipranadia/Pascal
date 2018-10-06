program no4;

uses crt;

var
        angka:array[1..100] of integer;
        i,min,max:integer;
begin
clrscr;
        i:=1;
        write('Masukan angka ke- ',i,' = ');
        readln(angka[i]);
        min:=angka[i];
        max:=angka[i];
        while (angka[i]>=0) do
                begin
                if angka[i]<min then
                        min:=angka[i]
                else
                        if angka[i]>max then
                                max:=angka[i];
                i:=i+1;
                write('Masukan angka ke-',i,' = ');
                readln(angka[i]);
                end;
        writeln;
        writeln('Nilai maks = ',max);
        writeln('Nilai min = ',min);
readln;
end.
