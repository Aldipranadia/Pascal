program Tubes;

uses crt;
        type
                dataapartemen=record
                t_apartemen:string;
                harga:longint;
                stok:integer;
                fasilitas:string;
                luasbangunan:string;
                jumlahkamar:integer;
                end;
        type
                nama=record
                n_nama_apartemen:string;
                p_apartemen:string;
                tipe_apartemen:array[1..5] of dataapartemen;
                end;
var
        pilihan:char;
        i,j:integer;
        anstipe,ansnama:string;
        apartemen:array [1..5] of nama;
        procedure mainmenu;
        begin
        writeln('                                                  ==PRANADIA COMPANY==');
        writeln('                                                     HERE FOR GOOD');
        writeln('1. Input Data ');
        writeln('2. Update Data ');
        writeln('3. Delete Data ');
        writeln('4. Info Aparatemen ');
        writeln('5.  ');
        writeln('6. Data Transaksi ');
        writeln('7. Exit ');
        writeln;
        write('Pilih : ');readln(pilihan);
        writeln;
        case pilihan of
                '1':begin
                    clrscr;
                        i:=1;
                        repeat
                                write('Nama Apartemen : ');readln(apartemen[i].n_nama_apartemen);
                                write('Presentase penjualan(%) : ');readln(apartemen[i].p_apartemen);
                                j:=1;
                                repeat
                                        write('Tipe Apartemen ',apartemen[i].n_nama_apartemen,' : ');readln(apartemen[i].tipe_apartemen[j].t_apartemen);
                                        write('Harga : ');readln(apartemen[i].tipe_apartemen[j].harga);
                                        write('Stock : ');readln(apartemen[i].tipe_apartemen[j].stok);
                                        write('Fasilitas : ');readln(apartemen[i].tipe_apartemen[j].fasilitas);
                                        write('Luas Bangunan(KM persegi) : ');readln(apartemen[i].tipe_apartemen[j].luasbangunan);
                                        write('Jumlah Kamar : ');readln(apartemen[i].tipe_apartemen[j].jumlahkamar);
                                        write('Mau menambahkan data lain?[Y/N] : ');readln(anstipe);
                                        writeln;
                                        j:=j+1;
                                until((anstipe='n')or(anstipe='N')or(j=100));
                                write('Mau menambahkan data apartemen lain?[Y/N] : ');readln(ansnama);
                                i:=i+1;
                        until((ansnama='n')or(ansnama='N')or(i=100));readln;
                        mainmenu;
                    end;
                '2':begin
                    end;
                '3':begin
                    end;
                '4':begin
                    end;
                '5':begin
                    end;
                '6':begin
                    end;
                '7':begin
                    writeln('                                                ===TERIMA KASIH===');
                    write('                                             ==ATAS KEPERCAYAAN ANDA==');
                    write('press enter to continue');
                    mainmenu;
                    end;
        else
                write('press enter to continue');
                mainmenu;
        end;
end;
begin
clrscr;
mainmenu;
readln;
end.
