program nota;
uses wincrt;
type
 databrg=record
 namabrg:string[15];
 hargabrg:real;
 kode:string[5];
 jml:integer;
 tot:real;
 
end;
var
jumlahbrg,i,j:byte;
totalharga:real;
tgl,nama,alamat : string;
barang:array[1..50] of databrg;
{Masukan Data}
begin
clrscr;
write('Tanggal Pembelian: ');readln(tgl);
write('Nama Pembeli     : ');readln(nama);
write('Alamat           : ');readln(alamat);
write('Jumlah Pembelian : ');readln(jumlahbrg);
for i :=1 to jumlahbrg do
 begin
 writeln;writeln('Barang ke ',i:2);
 with barang[i]do
 begin
 write('Kode barang  : ');readln(kode);
 write('Nama Barang  : ');readln(namabrg);
 write('harga satuan : ');readln(hargabrg);
 write('jumlah barang: ');readln(jml);
 end;
 end;
 
{Menampilkan Hasil}
clrscr;
writeln('                          NOTA BELANJA BARANG');
writeln('                               TOKO ABADI');
writeln('                      Jl. Suka Ngawur No.4 Bangkalan');
writeln;
writeln('Tanggal Pembelian: ',tgl);
writeln('Nama Pembeli     : ',nama);
writeln('Alamat           : ',alamat);
writeln('------------------------------------------------------------------------------');
writeln('No | Kode barang | Nama Barang | harga satuan(Rp) | jumlah | hargaxjumlah(Rp)');
writeln('------------------------------------------------------------------------------');
totalharga:=0;
for i:= 1 to jumlahbrg do
begin
with barang[i]do
 begin
 totalharga:=totalharga+(hargabrg*jml);
 tot:=hargabrg*jml;
 write(i,'       ');
 write(kode,'     ');
 write(namabrg:10,'    ');
 write(hargabrg:10:0,'             ');
 write(jml,'     ');
 writeln(tot:10:0);
 end;
end;
writeln('------------------------------------------------------------------------------');
writeln('                                   Total Pembelian    :     ',totalharga:10:0);
writeln('------------------------------------------------------------------------------');
writeln(' TERIMA KASIH ');
readln;
donewincrt;
end.
