program nilai_minmax;

uses crt;

var
        bil,i,min1,min2,max1,max2,max,min:integer;
begin
clrscr;
        write('Bilangan ke-1 : ');
        readln(bil);
        max:=bil;
        min:=bil;
        for i:=2 to 4 do
                begin
                write('Bilangan ke-',i,' : ');
                readln(bil);
                if(bil>max)then
                        max:=bil
                else
                        if(bil<min)then
                                min:=bil;
                end;
        writeln('Nilai maksimum : ',max);
        write('Nilai minimum : ',min);
readln;
end.
