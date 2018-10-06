{ Created by ignatius
program membuat menu tampilan pada pascal
}
uses crt;
type pdata=^data;
     data=record
     nim,nama:string;
     nilai:integer;
     next:pdata;
end;
var  pawal,pakhir:pdata;

procedure cetakdata;
   var buff:pdata;
   begin
      clrscr;
      {new(buff);}
      buff:=pawal;
      if buff = nil then
      begin
         writeln('Data kosong..silahkan isi dahulu..');
      end;
      if buff <> nil then
      begin
         writeln('Data-data yang telah Anda input : ');
         writeln;
      end;
      while buff<>nil do
      begin
         writeln('NIM         : ',buff^.nim);
         writeln('Nama        : ',buff^.nama);
         writeln('Nilai       : ',buff^.nilai);
         writeln('  ***  ');
         buff:=buff^.next;
      end;writeln;
      write('Tekan ENTER untuk kembali ke MAIN MENU');
      readln;
   end;
procedure TambahData(nim,nama:string;nilai:integer);
   var buff:pdata;
   begin
     { new(buff); }
      buff^.nim:=nim;
      buff^.nama:=nama;
      buff^.nilai:=nilai;
      buff^.next:=nil;
      if pawal=nil then
      begin
         pawal:=buff;
         pakhir:=buff;
      end
      else
      begin
         pakhir^.next:=buff;
         pakhir:=buff;
      end;
   end;
Procedure DeleteData;
   var hapus:pdata;
   begin
      clrscr;
      writeln('Data pertama akan dihapus..');
      write('Tekan [Enter] untuk konfirmasi');writeln;
      new(hapus);
      hapus := pawal;
      pawal := hapus^.next;
      dispose(hapus);
      readkey;
      write('Data pertama telah dihapus');
      readkey;
      cetakdata;
   end;
procedure MainMenu;
   var nilai,jum,i,Pil:integer;
   nim,nama:string;
   begin
      clrscr;
      gotoXY(45, 4); write('**** MAIN MENU ****');writeln;
      gotoXY(20, 8); Write('1. Input Data');
      gotoXY(20,10); Write('2. Lihat Data');
      gotoXY(20,12); Write('3. Hapus Data Pertama');
      gotoXY(20,14); Write('0. Exit');writeln;
      gotoXY(40,16); Write('Enter Your Choice (0,1,2,3) !!! : ');Readln(Pil);writeln;
      case pil of
           1 : begin
                  clrscr;
                  write('Jumlah data : ');
                  readln(jum);writeln;
                  for i:=1 to jum do
                  begin
                     write('NIM         : ');readln(nim);
                     write('Nama        : ');readln(nama);
                     write('Nilai       : ');readln(nilai);
                     writeln('  ***  ');
                     TambahData(nim,nama,nilai);
                  end;
                  mainmenu;
               end;
           2 : begin
                  cetakdata; MainMenu;
               end;
           3 : begin
                  DeleteData; MainMenu;
               end;
           0 : begin
                clrscr;
                  writeln('###-EXIT-###');readln;
               end;
      else
      gotoXY(20, 26); write('Data Belum di Input Mas.../mbak...Bro (Press Enter To Select Return)');readln;
      MainMenu;
      end;
   end;
{Program Utama}
begin
clrscr;
MainMenu;
end.

