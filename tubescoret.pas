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
                n_apartemen:string;
                p_apartemen:integer;
                tipe_apartemen:array[1..5] of dataapartemen;
                end;
        type
                list_apartemen=record
                nama_a:string;
                tipe_a:string;
                jumlah_a:integer;
                harga_a:longint;
                total_a:integer;
                end;
        type
                costumer=record
                n_costumer:string;
                tot_harga:longint;
                d_costumer:array[1..99] of list_apartemen;
                end;
var
        apartemen:array [1..99] of nama;
        transaksi:array[1..99] of costumer;
        pilihan:char;
        i,j,k,l,h,n,m,tot_apartemen,tot_tipe:integer;
        anstipe,ansnama,anslist:string;

        procedure input;
        begin
                writeln('INPUT DATA');
                            writeln;
                                repeat
                                        j:=1;
                                        i:=i+1;
                                        apartemen[1].n_apartemen:='Thamrin Residence';
                                        apartemen[2].n_apartemen:='Kalibata Residence';
                                        apartemen[3].n_apartemen:='Podomoro Park';
                                        apartemen[4].n_apartemen:='Parahyangan Residence';
                                        apartemen[5].n_apartemen:='Mediterania Boulevard Residence';
                                        write('Nama Apartemen : ',apartemen[i].n_apartemen);
                                        writeln;
                                        write('Presentase penjualan(%) : ');
                                        readln(apartemen[i].p_apartemen);
                                        repeat
                                                apartemen[i].tipe_apartemen[1].t_apartemen:='Studio';
                                                apartemen[i].tipe_apartemen[2].t_apartemen:='Convertible Studio';
                                                apartemen[i].tipe_apartemen[3].t_apartemen:='Loft';
                                                apartemen[i].tipe_apartemen[4].t_apartemen:='Junior 1 Bedroom';
                                                apartemen[i].tipe_apartemen[5].t_apartemen:='Garden';
                                                writeln;
                                                write('Tipe ',apartemen[i].tipe_apartemen[j].t_apartemen);
                                                writeln;
                                                write('Harga : ');
                                                readln(apartemen[i].tipe_apartemen[j].harga);
                                                write('Stock : ');
                                                readln(apartemen[i].tipe_apartemen[j].stok);
                                                write('Fasilitas : ');
                                                readln(apartemen[i].tipe_apartemen[j].fasilitas);
                                                write('Luas Bangunan(KM persegi) : ');
                                                readln(apartemen[i].tipe_apartemen[j].luasbangunan);
                                                write('Jumlah Kamar : ');
                                                readln(apartemen[i].tipe_apartemen[j].jumlahkamar);
                                                writeln;
                                                m:=j;
                                                j:=j+1;
                                        until(j=6);
                                        write('Mau menambahkan data apartemen lain?[Y/N] : ');
                                        readln(ansnama);
                                        clrscr;
                                until((ansnama='n')or(ansnama='N')or(i=99));
                                writeln;
                                writeln('                                               ***DATA TER-INPUT***');
                                writeln;
                                write('Press enter untuk kembali ke menu utama');readln;

        end;

        procedure mainmenu;
        begin
                writeln('                                                  ==PRANADIA COMPANY==');
                writeln('                                                     HERE FOR GOOD');
                writeln('1. Input Data ');
                writeln('2. Delete Data ');
                writeln('3. Info Aparatemen ');
                writeln('4. Pembelian Apartamen ');
                writeln('5. Data Transaksi ');
                writeln('6. Exit ');
                writeln;
                write('Pilih : ');
                readln(pilihan);
                writeln;
                case pilihan of
                        '1':begin
                            clrscr;
                                input;
                                clrscr;
                                mainmenu;
                            end;
                        '2':begin
                            end;
                        '3':begin
                            clrscr;
                            if (i=0) then
                                begin
                                writeln;
                                writeln('ANDA BELUM MENGINPUTKAN DATA,SILAHKAN INPUT DATA TERLEBIH DAHULU');
                                writeln;
                                write('Press Enter untuk kembali ke menu utama');
                                readln;
                                clrscr;
                                mainmenu;
                                end
                            else if (i<>0) then
                            begin
                            writeln('INFO APARTEMEN');
                            writeln;
                            l:=1;
                            k:=1;
                                repeat
                                        writeln;
                                        writeln('Nama Apartemen : ',apartemen[l].n_apartemen);
                                        writeln('Presentase penjualan : ',apartemen[l].p_apartemen);
                                        k:=1;
                                        repeat
                                                writeln;
                                                writeln('Tipe Apartemen : ',apartemen[l].tipe_apartemen[k].t_apartemen);
                                                writeln('Harga : ',apartemen[l].tipe_apartemen[k].harga);
                                                writeln('Stok yang tersedia : ',apartemen[l].tipe_apartemen[k].stok);
                                                writeln('Fasilitas : ',apartemen[l].tipe_apartemen[k].fasilitas);
                                                writeln('Luas Bangunan(KM) : ',apartemen[l].tipe_apartemen[k].luasbangunan);
                                                writeln('Jumlah Kamar : ',apartemen[l].tipe_apartemen[k].jumlahkamar);
                                                k:=k+1;
                                        until(k>=j);
                                        l:=l+1;
                                until(l>i);
                                writeln;
                                write('Press enter untuk kembali ke menu utama');readln;
                                clrscr;
                                mainmenu;
                            end;
                            end;
                        '4':begin
                            clrscr;
                                if (i=0) then
                                        begin
                                                writeln('MAAF KAMI BELUM BISA MENERIMA TRANSAKSI,SILAHKAN COBA LAGI NANTI');
                                                writeln;
                                                write('Press enter untuk kembali ke menu utama');
                                                readln;
                                                clrscr;
                                                mainmenu;
                                        end
                                else if (i<>0) then
                                        begin
                                                writeln('PEMBELIAN APARTEMEN');
                                                writeln;
                                                repeat
                                                        m:=m+1;
                                                        n:=1;
                                                        write('Masukan nama costumer : ');
                                                        readln(transaksi[m].n_costumer);
                                                        writeln('Pilih Apartemen yang ingin di beli :');
                                                        writeln('1.Thamrin Residence');
                                                        writeln('2.Kalibata Residence');
                                                        writeln('3.Podomoro Park');
                                                        writeln;
                                                        write('Mau membeli apartemen lain?[Y/N] : ');
                                                        readln(anslist);
                                                until((anslist='n')or(anslist='N')or(m=99));
                                        end;
                            end;
                        '5':begin
                            end;
                        '6':begin
                            writeln('                                                ===TERIMA KASIH===');
                            writeln('                                             ==ATAS KEPERCAYAAN ANDA==');
                            end;
                else
                        writeln('Input Not Valid');
                        writeln('Press enter untuk kembali ke menu utama');readln;
                        clrscr;
                        mainmenu;
                end;
        end;
begin
clrscr;
        mainmenu;
readln;
end.
