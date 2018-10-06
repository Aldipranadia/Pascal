program parking;

uses crt;

var
        jam1,jam2,menit1,menit2,menit3,menit4,jm,jk,dr,hr,mn,hp:integer;

begin
clrscr;
        write('Masukan jam masuk : ');
        readln(jam1);
        write('Masukan menit masuk : ');
        readln(menit1);
        write('Masukan jam keluar : ');
        readln(jam2);
        write('Masukan menit keluar : ');
        readln(menit2);
        menit3:=jam1*60;
        menit4:=jam2*60;
        jm:=menit1+menit3;
        jk:=menit2+menit4;
        dr:=jk-jm;
        hr:=dr div 60;
        mn:=dr mod 60;
        if mn>0 then
                begin
                        hr:=hr+1;
                        hp:=hr*2000;
                        writeln('Harga parkir : ',hp);
                end
        else
                if mn=0 then
                        begin
                                hp:=hr*2000;
                                writeln('Harga parkir : ',hp);
                        end;
readln;
end.