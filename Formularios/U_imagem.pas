unit U_imagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_imagem = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_imagem: Tfrm_imagem;

implementation

{$R *.dfm}

uses Menu, U_texto;

procedure Tfrm_imagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_menu.show;
end;

end.
