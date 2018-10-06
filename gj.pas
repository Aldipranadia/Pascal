unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

var
  z, sec, min:integer;
  Up, Right:boolean;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Image3.Left := (Mouse.CursorPos.x - 130);
end;

procedure TForm1.Timer2Timer(Sender: TObject);

begin
  if Up = True then
      Image2.Top := Image2.Top - z + random(2)
    else
      Image2.Top := Image2.Top + z + random(2);

    if Right = True then
      Image2.Left := Image2.Left + z + random(2)
    else
      Image2.Left := Image2.Left - z + random(2);


    if Image2.Top <= 0 then
      Up := False;

    if (Image2.Top + Image2.Height >= Image3.Top) and
      (Image2.Left + (Image2.Width / 2) > Image3.Left) and
      (Image2.Left + (Image2.Width / 2) < Image3.Left + Image3.Width)  then
      Up := true;

    if Image2.Top + Image2.Height >= Form1.Height then
      begin
        ProgressBar1.Visible := True;
        Progressbar1.Position := 0;
        Timer1.Enabled := False;
        Timer2.Enabled := False;
        Timer3.enabled := False;
        Timer4.enabled := False;
        Screen.Cursor := CrDefault;
        Image2.Top := 20;
        Image2.Left := 24;
        Image5.Visible := True;
        Showmessage('Game Over! You Lasted ' + Label2.Caption + ' Minute(s) and ' +
        Label4.Caption + ' Second(s)!');
        Label2.Caption := '0';
        Label4.Caption := '0';
        z := 2;
        Exit;
      end;

    if Image2.Left <= 0 then
      Right := True;

    if Image2.Left + Image2.Width >= Form1.Width then
      Right := False;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Sec := StrToInt(Label4.Caption);
  if Sec = 59 then
    begin
      Label4.Caption := IntToStr(0);
      Min := StrToInt(Label2.Caption);
      Label2.Caption := IntToStr(Min + 1)
    end else
      Label4.Caption := IntToStr(Sec + 1);
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  z := z + 1
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  z := 2;
  case random(2) of
    0: up := true;
    1: up := false;
  end;

  case random(2) of
    0: Right := True;
    1: Right := False;
  end;

  Image2.Top := 20;
  Image2.Left := 24;



end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  repeat
    Progressbar1.Position := Progressbar1.Position + random(2);
    Sleep(Random(5));
  until(ProgressBar1.Position = 1000);
  Progressbar1.visible := False;
  Image5.Visible := False;
  Timer1.Enabled := True;
  Timer2.Enabled := True;
  Timer3.Enabled := True;
  Timer4.Enabled := True;
  Screen.Cursor := crnone;

end;

end.
