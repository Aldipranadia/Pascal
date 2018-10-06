program konvert_bulan;

uses crt;

var
        tgl,bln,thn:integer;
        nama_bulan:string;

begin
clrscr;
        write('Masukan tanggal : ');
        readln(tgl);
        write('Masukan bulan : ');
        readln(bln);
        write('Masukan tahun : ');
        readln(thn);
        case bln of
                1:nama_bulan:='Januari';
                2:nama_bulan:='Febuari';
                3:nama_bulan:='Maret';
                4:nama_bulan:='April';
                5:nama_bulan:='Mei';
                6:nama_bulan:='Juni';
                7:nama_bulan:='Juli';
                8:nama_bulan:='Agustus';
                9:nama_bulan:='September';
                10:nama_bulan:='Oktober';
                11:nama_bulan:='November';
                12:nama_bulan:='Desember';
        end;
        writeln('Hari ini tanggal ',tgl,' bulan ',nama_bulan,' tahun ',thn);

readln;
end.