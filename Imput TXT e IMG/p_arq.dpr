program p_arq;

uses
  Vcl.Forms,
  u_carregarq in 'u_carregarq.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
