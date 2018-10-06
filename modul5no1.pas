program hipertensi;

uses crt;

var
        ts,a:integer;
        hasil,b:string;
        function tekanan(ts:integer):string;
        begin
                case ts of
                        90..119:tekanan:='Normal(tidak mengidap hipertensi)';
                        120..139:tekanan:='Prahipertensi';
                        140..159:tekanan:='Hipertnesi derajat 1';
                        else
                                if (ts>=160) then
                                        tekanan:='Hipertensi derajat 2'
                                else
                                        tekanan:='Harap masukan inputan di atas 90';
                end;
        end;

begin
clrscr;
        write('Masukan tekanan sistolik anda : ');
        readln(ts);
        writeln;
        write(tekanan(ts));
readln;
end.
