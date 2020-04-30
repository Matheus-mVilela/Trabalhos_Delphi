program Temporisador;

uses
  Vcl.Forms,
  U_cronometro in 'U_cronometro.pas' {frm_1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_1, frm_1);
  Application.Run;
end.
