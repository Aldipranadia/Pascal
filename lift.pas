program lift;

uses crt;

var
        a,tot,i:integer;

begin
clrscr;
        i:=1;
        repeat
                repeat
                        writeln('Masukan berat badan penumpang ke-',i,' : ');
                        readln(a);
                until(a<=350);
                i:=i+1;
                tot:=tot+a;
        until(tot>=1300);
        i:=i-1;
        tot:=tot-a;
        writeln('Overweight!!,Penumpang ke-',i,' harus keluar sekarang juga');
        writeln('Beban lift sebelum penumpang ke-',i,' masuk adalah ',tot);
readln;
end.