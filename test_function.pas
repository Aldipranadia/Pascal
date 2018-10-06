program cobacoba;

uses crt;

var
        a,b,hk,hj,hm:integer;
        hb:real;
        function kali(a,b:integer):integer;
        begin
                kali:=a*b;
        end;

        function jumlah(a,b:integer):integer;
        begin
                jumlah:=a+b;
        end;

        function bagi(a,b:integer):real;
        begin
                bagi:=a/b;
        end;

        function kurang(a,b:integer):integer;
        begin
                if (a>b) then
                        kurang:=a-b
                else
                        if(a<b) then
                                kurang:=b-a;
        end;
begin
clrscr;
        write('Masukan bilangan ke 1 : ');
        readln(a);
        write('Masukan bilangan ke 2 : ');
        readln(b);
        hk:=kali(a,b);
        hj:=jumlah(a,b);
        hb:=bagi(a,b);
        hm:=kurang(a,b);
        writeln;
        writeln('Hasil kali kedua bilangan adalah = ',hk);
        writeln('Hasil jumlah kedua bilangan adalah = ',hj);
        writeln('Hasil bagi kedua bilangan adalah = ',hb:0:2);
        writeln('Hasil kurang kedua bilangan adalah = ',hm);
readln;
end.
