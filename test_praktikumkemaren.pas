program no1;

uses crt;
        const nmax=30;
        type recmhs=record
                nim:string;
                nama:string;
                prostud:string;
                ipk:real;
                end;
        type tabelmhs=array[1..nmax] of recmhs;

var
        mhs:tabelmhs;
        n,indeks:integer;
        ip:real;

        procedure inputdata(n:integer;var datmhs:tabelmhs);
        var
                i:integer;
        begin
                i:=1;
                repeat
                        write('Masukan nama mahasiswa ke-',i,' : ');readln(datmhs[i].nama);
                        write('Masukan NIM mahasiswa : ');readln(datmhs[i].nim);
                        write('Masukan program studi mahasiswa : ');readln(datmhs[i].prostud);
                        write('Masukan IPK mahasiswa : ');readln(datmhs[i].ipk);
                        i:=i+1;
                until(i>n)
        end;
begin
clrscr;
        write('Masukan jumlah data mahasiswa : ');readln(n);
        writeln;
        inputdata(n,mhs);
readln
end.