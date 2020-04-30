unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  Tfrm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Arquivos1: TMenuItem;
    Editar1: TMenuItem;
    Janelas1: TMenuItem;
    Sair1: TMenuItem;
    Salvar1: TMenuItem;
    Fechar1: TMenuItem;
    exto1: TMenuItem;
    Imagem1: TMenuItem;
    btn_txt: TButton;
    btn_img: TButton;
    procedure btn_txtClick(Sender: TObject);
    procedure btn_imgClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_menu: Tfrm_menu;

implementation

{$R *.dfm}

uses U_imagem, U_texto;

procedure Tfrm_menu.btn_imgClick(Sender: TObject);
begin
frm_menu.Hide;
frm_imagem := tfrm_imagem.Create(self);
frm_imagem.Show;
end;

procedure Tfrm_menu.btn_txtClick(Sender: TObject);
begin
frm_menu.Hide;
frm_texto := tfrm_texto.Create(self);
frm_texto.ShowModal;
end;

procedure Tfrm_menu.Sair1Click(Sender: TObject);
begin
frm_menu.Close;
end;

end.
