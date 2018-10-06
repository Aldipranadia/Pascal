program Usia;

uses crt;
var
        tgl,bln,thn,tanggal_h,bulan_h,tahun_h:integer;
        procedure HitungUsia(var tgl_hasil,bln_hasil,thn_hasil:integer);
        var
                tgl_now,bln_now,thn_now:integer;
                tgl_cek:integer;
                tanggal,bulan,tahun:integer;

        begin
                tanggal:=tgl_hasil;
                bulan:=bln_hasil;
                tahun:=thn_hasil;
                tgl_now:=21;
                bln_now:=10;
                thn_now:=2017;{asumsi sekarang tgl 21 oktober 2017}
                case bulan of
                        1:tgl_cek:=31;
                        2:tgl_cek:=28;
                        3:tgl_cek:=31;
                        4:tgl_cek:=30;
                        5:tgl_cek:=31;
                        6:tgl_cek:=30;
                        7:tgl_cek:=31;
                        8:tgl_cek:=31;
                        9:tgl_cek:=30;
                        10:tgl_cek:=31;
                        11:tgl_cek:=30;
                        12:tgl_cek:=31;
                end;
                if tgl_now >= tanggal then
                        tgl_hasil:=tgl_now-tanggal
                else
                        tgl_hasil:=tgl_cek-(tanggal-tgl_now)+1;
                if (bln_now>bulan) and (tgl_now>= tanggal) then
                        begin
                                bln_hasil:=bln_now-bulan;
                                thn_hasil:=thn_now-tahun;
                        end
                else if (bln_now<bulan) and (tgl_now>= tanggal) then
                        begin
                                bln_hasil:=12-(bulan-bln_now)+1;
                                thn_hasil:=thn_now-tahun-1;
                        end
                else if (bln_now=bulan) and (tgl_now < tanggal) then
                        begin
                                bln_hasil:=12-(bulan-bln_now);
                                thn_hasil:=thn_now-tahun-1;
                        end
                else if (bln_now>bulan) and (tgl_now < tanggal) then
                        begin
                                bln_hasil:=bln_now-bulan-1;
                                thn_hasil:=thn_now-tahun;
                        end
                else if (bln_now<bulan) and (tgl_now < tanggal) then
                        begin
                                bln_hasil:=12-(bulan-bln_now);
                                thn_hasil:=thn_now-tahun-1;
                        end;

        end;
BEGIN
        clrscr;
        writeln('Masukkan tanggal lahir mu : ');
        write('Tanggal : ');
        readln(tgl);
        write('Bulan : ');
        readln(bln);
        write('Tahun : ');
        readln(thn);
        HitungUsia(tgl,bln,thn);
        writeln('Umur mu sekarang adalah : ',tgl,' hari ',bln,' bulan ',thn,' tahun');
        readln;
END.

