program nilai;

uses crt;

var
        a,b,c,d,min1,max1,min2,max2,min,max:integer;
begin
clrscr;
        write('Masukan bilangan pertama : ');
        readln(a);
        write('Masukan bilangan kedua : ');
        readln(b);
        write('Masukan bilangan ketiga : ');
        readln(c);
        write('Masukan bilangan ke empat : ');
        readln(d);
        if a>b then
                max1:=a
        else
                max1:=b;
        if c>d then
                max2:=c
        else
                max2:=d;
        if a<b then
                min1:=a
        else
                min1:=b;
        if c<d then
                min2:=c
        else
                min2:=d;
        if max1>max2 then
                max:=max1
        else
                max:=max2;
        if min1<min2 then
                min:=min1
        else
                min:=min2;
        writeln('Bilangan max adalah ',max);
        writeln('Bilangan min adalah ',min);
readln;
end.
