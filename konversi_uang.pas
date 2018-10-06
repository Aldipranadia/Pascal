program konversi_uang;

uses crt;

var
Hasil,sisa,sepuluhribu,seribu,uang : integer;

begin
clrscr;
        write('Masukan uang anda: ');
        readln(uang);
        sepuluhribu := uang div 10000;
        sisa := uang mod 10000;
        seribu := sisa div 1000;

        writeln('Jadi sepuluh ribuan ada ',sepuluhribu);
        writeln('dan seribuan ada ',seribu);
readln;
end.
