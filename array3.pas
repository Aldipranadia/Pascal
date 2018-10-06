program no3;

uses crt;

var
        angka:array[1..100] of integer;
        i,jum:integer;
        rata:real;
begin
clrscr;
        i:=1;
        jum:=0;
        repeat
                write('Masukan angka ke-',i,': ');
                readln(angka[i]);
                jum:=jum+angka[i];
                i:=i+1;
        until(angka[i-1]<0);
        writeln;
        jum:=jum-angka[i-1];
        rata:=jum/(i-2);//-2 karena di data i=5 sedangkan kita nyari rata2 dari 3 data
        writeln('Totalnya = ',jum);
        write('Rata-rata = ',rata:0:2);
readln;
end.