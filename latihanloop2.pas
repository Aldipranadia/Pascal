program tebakan;

uses crt;

var
        angka,i,j:integer;

begin
clrscr;
        j:=5;
        repeat
                writeln('Masukan angka : ');
                readln(angka);
                i:=i+1;
                if(angka<>999) then
                        begin
                        j:=j-1;
                        writeln('ANDA SALAH,sisa nyawa:',j);
                        end;
        until((angka=999) or (j=0));
        if(angka=999) then
                begin
                writeln('ANDA BENAR');
                writeln('Pada tebakan ke-',i);
                end
        else
                if(j=0) then
                        begin
                        writeln('GAME OVER');
                        end;
readln;
end.