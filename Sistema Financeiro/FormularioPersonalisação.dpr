program FormularioPersonalisação;

uses
  Vcl.Forms,
  U_formulario in 'U_formulario.pas' {frm_principal},
  U_cadastro in 'U_cadastro.pas' {frm_cad_clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tfrm_cad_clientes, frm_cad_clientes);
  Application.Run;
end.
