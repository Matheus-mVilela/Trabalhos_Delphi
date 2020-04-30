unit U_formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfrm_principal = class(TForm)
    p_principal: TPanel;
    Image1: TImage;
    pnl_cadastro: TPanel;
    pnl_venda: TPanel;
    pnl_itens_cadastro: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel3: TPanel;
    pnl_cad_clientes: TPanel;
    pnl_itens_vendas: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    pnl_itens_relatorios: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    pnl_relatorio: TPanel;
    Image2: TImage;
    Panel8: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure pnl_cadastroClick(Sender: TObject);
    procedure pnl_vendaClick(Sender: TObject);
    procedure pnl_relatorioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl_cad_clientesClick(Sender: TObject);

  private
    function selecionarMenu (pMenu: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_cadastro;


procedure Tfrm_principal.FormCreate(Sender: TObject);
begin
   selecionarMenu(0);
end;

procedure Tfrm_principal.Image1Click(Sender: TObject);
begin
Application.Terminate;

end;

procedure Tfrm_principal.pnl_cadastroClick(Sender: TObject);
begin
    selecionarMenu(1);
end;

procedure Tfrm_principal.pnl_cad_clientesClick(Sender: TObject);
begin
 frm_cad_clientes.ShowModal;
end;

procedure Tfrm_principal.pnl_relatorioClick(Sender: TObject);
begin
selecionarMenu(3);
end;

procedure Tfrm_principal.pnl_vendaClick(Sender: TObject);
begin
selecionarMenu(2);
end;

function Tfrm_principal.selecionarMenu(pMenu: Integer): Boolean;
begin
case pMenu of
0:
begin
  pnl_itens_cadastro.Visible:= False;
  pnl_itens_vendas.Visible:= False;
  pnl_itens_relatorios.Visible:= False;
end;

1:
begin
  pnl_itens_cadastro.Visible:= True;
  pnl_itens_vendas.Visible:= False;
  pnl_itens_relatorios.Visible:= False;
end;

2:
begin
  pnl_itens_cadastro.Visible:= False;
  pnl_itens_vendas.Visible:= True;
  pnl_itens_relatorios.Visible:= False;
end;

3:
begin
  pnl_itens_cadastro.Visible:= False;
  pnl_itens_vendas.Visible:= False;
  pnl_itens_relatorios.Visible:= True;
end;

end;
end;

end.
