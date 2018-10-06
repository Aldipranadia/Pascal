program conversion;

uses crt;

var
        c,pil:integer;
        konversi:real;
        function reamur(x:integer):real;
        begin
                reamur:=4/5*x;
                write(x);
        end;

        function farenheit(x:integer):real;
        begin
                farenheit:=(9/5*x)+32;
        end;
begin
clrscr;
        write('Suhu celcius = ');
        readln(c);
        writeln('Akan di konversi kan ke ');
        writeln('1. Reamur');
        writeln('2. Farenheit');
        write('Pilih(1/2) : ');
        readln(pil);
        case pil of
                1:begin
                        konversi:=reamur(c);
                        writeln('Hasil konversi celcius-reamur = ',konversi:0:2);
                  end;
                2:begin
                        konversi:=farenheit(c);
                        writeln('Hasil konversi celcius-farenheit = ',konversi:0:2);
                  end;
        end;
readln;
end.

