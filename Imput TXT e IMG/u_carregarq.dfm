object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 316
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 210
    Height = 210
  end
  object lb_recuperar: TLabel
    Left = 259
    Top = 280
    Width = 3
    Height = 13
  end
  object Memo1: TMemo
    Left = 224
    Top = 8
    Width = 210
    Height = 210
    TabOrder = 0
  end
  object btn_imagem: TButton
    Left = 64
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Carregar IMG'
    TabOrder = 1
    OnClick = btn_imagemClick
  end
  object btn_texto: TButton
    Left = 232
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Carregar TXT'
    TabOrder = 2
    OnClick = btn_textoClick
  end
  object btn_salvar: TButton
    Left = 313
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Salvar TXT'
    TabOrder = 3
    OnClick = btn_salvarClick
  end
  object dg_text: TOpenTextFileDialog
    Left = 360
    Top = 16
  end
  object dg_img: TOpenPictureDialog
    Left = 144
    Top = 24
  end
  object dg_save: TSaveTextFileDialog
    Filter = 'Bloco de Notas (*.txt)|*.txt|Word (*.docx)|*.docx'
    Left = 296
    Top = 16
  end
end
