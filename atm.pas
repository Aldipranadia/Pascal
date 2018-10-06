program atm;
uses crt;
type nasabah=record
    nama:string;
    norek:string;
    saldo:real;
end;
var
    f:file of nasabah;
    nsb,nsb1,temp:nasabah;
    pil,i,i2:integer;
    jumtrans:integer;
begin
repeat
    clrscr;
    writeln('1.buat rekening baru');
    writeln('2.debit');
    writeln('3.withdraw');
    writeln('4.transfer');
    writeln('5.view data rekening');
    writeln('6.exit');
    write('pilihan : ');readln(pil);
    case pil of
        1:begin
                assign(f,'data.dat');
                {$i-}
                reset(f);
                {$i+}
                if IOresult<>0 then
                begin
                    rewrite(f);
                end
                else
                begin
                    seek(f,filesize(f));
                end;
                write('nomor rekening : ');readln(temp.norek);
                write('nama : ');readln(temp.nama);
                write('saldo :');readln(temp.saldo);
                write(f,temp);
                write('sukses.......');
 close(f);
                readln;
            end;
        2:begin
 assign(f,'data.dat');
                {$i-}
                reset(f);
                {$i+}
                if IOresult<>0 then
                begin
                    writeln('belum ada data');
                end
                else
                begin
                    writeln('nomor rekening : ');readln(temp.norek);
                    writeln('jumlah : ');readln(temp.saldo);
  i:=0;
                    while not eof(f) do
                    begin
                        read(f,nsb);
                        if(nsb.norek=temp.norek) then break;
   inc(i);
                    end;
  seek(f,i);
                    nsb.saldo:=nsb.saldo+temp.saldo;
                    write(f,nsb);
                end;
 close(f);
 write('sukses.......');
 readln;
           end;
3:begin
assign(f,'data.dat');
                {$i-}
                reset(f);
                {$i+}
                if IOresult<>0 then
                begin
                    writeln('belum ada data');
                end
                else
                begin
                    writeln('nomor rekening : ');readln(temp.norek);
                    writeln('jumlah : ');readln(temp.saldo);
  i:=0;
                    while not eof(f) do
                    begin
                        read(f,nsb);
                        if(nsb.norek=temp.norek) then break;
   inc(i);
                    end;
  seek(f,i);
                    nsb.saldo:=nsb.saldo-temp.saldo;
                    write(f,nsb);
 end;
 close(f);
 write('sukses.......');
 readln;
end;
4:begin
 assign(f,'data.dat');
                {$i-}
                reset(f);
                {$i+}
                if IOresult<>0 then
                begin
                    writeln('belum ada data');
                end
                else
                begin
                    writeln('nomor rekening anda: ');readln(nsb.norek);
  writeln('nomor rekening tujuan: ');readln(nsb1.norek);
                    writeln('jumlah : ');readln(jumtrans);
  i:=0;
                    while not eof(f) do
                    begin
                        read(f,temp);
                        if(nsb.norek=temp.norek) then break;
   inc(i);
                    end;
  seek(f,i);
                    temp.saldo:=temp.saldo-jumtrans;
                    write(f,temp);
  reset(f);
  i2:=0;
  while not eof(f) do
                    begin
                        read(f,temp);
                        if(nsb1.norek=temp.norek) then break;
   inc(i2);
                    end;
  seek(f,i2);
                    temp.saldo:=temp.saldo+jumtrans;
                    write(f,temp);
 end;
 write('sukses.......');
 close(f);
 readln;
end;
5:begin
assign(f,'data.dat');
                {$i-}
                reset(f);
                {$i+}
                if IOresult<>0 then
                begin
                    writeln('belum ada data');
                end
                else
                begin
                    writeln('nomor rekening : ');readln(temp.norek);
  i:=0;
                    while not eof(f) do
                    begin
                        read(f,nsb);
                        if(nsb.norek=temp.norek) then
   begin
    writeln('nama : ',nsb.nama);
    writeln('nomor rekening : ',nsb.norek);
    writeln('saldo : Rp.',nsb.saldo:0:2);
    break;
   end;
   inc(i);
                    end;

                end;
 close(f);
 readln;
end;
end;
until(pil=6);
end.
