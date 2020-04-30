unit U_cronometro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.MPlayer,
  Vcl.Buttons;

type
  Tfrm_1 = class(TForm)
    t_tempo: TTimer;
    lb_segundos: TLabel;
    lb_2pontos: TLabel;
    lb_minutos: TLabel;
    MediaPlayer1: TMediaPlayer;
    btn_play: TSpeedButton;
    btn_abrir: TButton;
    opendialog1: TOpenDialog;
    txt_tempo: TEdit;
    procedure btn_playClick(Sender: TObject);
    procedure t_tempoTimer(Sender: TObject);
    procedure btn_abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_1: Tfrm_1;

implementation

{$R *.dfm}

procedure Tfrm_1.btn_abrirClick(Sender: TObject);
begin
if opendialog1.Execute then
begin
mediaplayer1.FileName := opendialog1.FileName;
btn_play.Enabled:=true;
end;

end;

procedure Tfrm_1.btn_playClick(Sender: TObject);

begin
  t_tempo.enabled := true;
end;

procedure Tfrm_1.t_tempoTimer(Sender: TObject);
var seg, mim, cont: integer;
begin
    begin
     seg:= strtoint(lb_segundos.caption);
     mim:= strtoint(lb_minutos.caption);
     cont:=seg + 1;

      lb_segundos.Caption:= inttostr(cont);

   if lb_segundos.Caption = '60' then
   begin
     lb_segundos.Caption:= '0';
     lb_minutos.Caption:= inttostr(strtoint (lb_minutos.Caption) + 1);


   end;

   if lb_segundos.Caption = txt_tempo.text then
   begin
     t_tempo.Enabled := false;
     mediaplayer1.Open;
     mediaplayer1.Play;
     btn_play.enabled :=false;
     lb_minutos.Caption:= '0';
     lb_segundos.Caption:='0';
     txt_tempo.Text:='';


   end;

 end;
end;

end.
