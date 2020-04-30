unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Media;

type
  TForm1 = class(TForm)
    MediaPlayerControl1: TMediaPlayerControl;
    OpenDialog1: TOpenDialog;
    lb_arquivo: TLabel;
    btn_abrir: TButton;
    btn_play: TButton;
    MediaPlayer2: TMediaPlayer;
    procedure btn_abrirClick(Sender: TObject);
    procedure btn_playClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    lb_arquivo.Text := ExtractFileName(OpenDialog1.FileName);
    MediaPlayer2.FileName:= OpenDialog1.FileName;
    btn_play.Enabled:=true;

  end;
end;



procedure TForm1.btn_playClick(Sender: TObject);
begin
if btn_play.StyleLookup = 'playtoolbutton' then
  begin
    MediaPlayer2.Play;
    btn_play.StyleLookup :=  'pausetoolbutton';
  end
else
  begin
    MediaPlayer2.Stop;
    btn_play.StyleLookup := 'playtoolbutton';
  end;


end;

end.
