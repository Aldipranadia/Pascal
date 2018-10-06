program security;

uses crt;

var
        user:string;
        pass:integer;

begin
clrscr;
        write('Username : ');
        readln(user);
        write('Password : ');
        readln(pass);
        if((user<>'admin')and(pass<>999))then
                begin
                write('Username : ');
                readln(user);
                write('Password : ');
                readln(pass);
                if((user<>'admin')and(pass<>999))then
                        begin
                        write('Username : ');
                        readln(user);
                        write('Password : ');
                        readln(pass);
                        end;
                        if((user<>'admin')and(pass<>999))then
                        writeln('BLOCKED')
        else
                if((user='admin')and(pass=999))then
                writeln('WELCOME');
                end;

readln;
end.