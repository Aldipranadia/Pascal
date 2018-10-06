program nilaiIPK;

uses crt;
var
        n_mutu,sks,jum_nilai,jum_sks:integer;
        IPK:real;
        mk:string;
        indek,stop:char;
        function tambah(A,B:integer):integer;
        begin
                tambah:=A+B;
        end;

        function perkalian(A,B:integer):integer;
        var
                i,jum:integer;
        begin
                jum:=0;
                for i:=1 to B do
                      jum:=jum+A;

                perkalian:=jum;
        end;

        function pembagian(A,B:integer):real;
        begin
                pembagian:=A/B;
        end;

        Procedure nilaiMutu(indeks:char;var mutu:integer);
        begin
                case indeks of
                'A':mutu:=4;
                'a':mutu:=4;
                'B':mutu:=3;
                'b':mutu:=3;
                'C':mutu:=2;
                'c':mutu:=2;
                'D':mutu:=1;
                'd':mutu:=1;
                'E':mutu:=0;
                'e':mutu:=0;
                end;
        end;
BEGIN
        clrscr;
        jum_sks:=0;
        n_mutu:=0;
        jum_nilai:=0;
        repeat
                write('Masukkan nama MK : ');
                readln(mk);
                write('Masukkan Jumlah SKS ',mk,' : ');
                readln(sks);
                write('Masukkan Nilai Indeks ',mk,' : ');
                readln(indek);
                nilaiMutu(indek,n_mutu);
                jum_nilai:=tambah(perkalian(sks,n_mutu),jum_nilai);
                jum_sks:=tambah(sks,jum_sks);
                IPK:=pembagian(jum_nilai,jum_sks);
                write('Masih akan menginputkan data?[Y/T] : ');
                readln(stop);
                writeln;
        until((stop='T') or (stop='t'));
        writeln('IPK anda adalah : ',IPK:0:2);
        readln;
END.

