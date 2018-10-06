program biodata;
uses crt;

var
        nama,alamat:string;
        umur:integer;
        sekolah:string;
        Jenis_kelamin:char;

begin
        clrscr;

        write('nama:');
        readln(nama);
        write('umur:');
        readln(umur);
        write('alamat:');
        readln(alamat);
        write('sekolah:');
        readln(sekolah);
        write('Jenis kelamin:');
        readln(Jenis_kelamin);

        writeln('============HASIL=============');
        writeln('nama:',nama);
        writeln('umur:',umur);
        writeln('alamat:',alamat);
        writeln('sekolah:',sekolah);
        writeln('Jenis kelamin:',Jenis_kelamin);
        readln;

end.
