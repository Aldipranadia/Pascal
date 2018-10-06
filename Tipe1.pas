program tipe1;
TYPE
        point = record
        X : integer;
        Y : integer;
end;
var
        p1,p2 : point;
begin
        writeln('contoh mengisi struktur dengan assignment');
        writeln('titik p1,dengan p1.x dan p1.y : ');
        p1.x:=1; p1.y:=2;
        writeln('p1.x = ',p1.x);
        writeln('p1.y = ',p1.y);
        writeln('baca titik p2');
        write('absis : ');
        readln(p2.x);
        write('ordinat : ');
        readln(p2.y);
        writeln('koordinat : ',p2.x, ', ',p2.y);
        readln;
end.