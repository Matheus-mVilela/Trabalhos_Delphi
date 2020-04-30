unit u_carregarq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    btn_imagem: TButton;
    btn_texto: TButton;
    Memo1: TMemo;
    dg_text: TOpenTextFileDialog;
    dg_img: TOpenPictureDialog;
    btn_salvar: TButton;
    lb_recuperar: TLabel;
    dg_save: TSaveTextFileDialog;
    procedure btn_textoClick(Sender: TObject);
    procedure btn_imagemClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.btn_imagemClick(Sender: TObject);
begin
if dg_img.Execute then
begin
  Image1.picture.LoadFromFile(dg_img.FileName);
end;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
if dg_save.Execute then
begin
  Memo1.lines.SaveToFile(dg_save.filename);
end;


end;

procedure TForm1.btn_textoClick(Sender: TObject);
begin
if dg_text.Execute then
begin
  memo1.Lines.LoadFromFile(dg_text.FileName);
end;
end;

end.
