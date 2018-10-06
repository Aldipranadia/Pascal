program nilai_minmax;

uses crt;

var
        a,b,c,d,min1,min2,max1,max2:integer;
begin
clrscr;
        write('Bilangan pertama : ');
        readln(a);
        write('Bilangan kedua : ');
        readln(b);
        write('Bilangan ketiga : ');
        readln(c);
        write('Bilangan keempat : ');
        readln(d);
        if(a>b)then
                begin
                max1:=a;
                min1:=b;
                end
        else
                max1:=b;
                min1:=a;
        if(c>d)then
                begin
                max2:=c;
                min2:=d;
                end
        else
                max2:=d;
                min2:=c;
readln;
end.
