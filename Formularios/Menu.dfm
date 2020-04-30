object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 167
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_txt: TButton
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Texto'
    TabOrder = 0
    OnClick = btn_txtClick
  end
  object btn_img: TButton
    Left = 128
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Imagem'
    TabOrder = 1
    OnClick = btn_imgClick
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object Arquivos1: TMenuItem
      Caption = 'Arquivos'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
    end
    object Janelas1: TMenuItem
      Caption = 'Janelas'
      object exto1: TMenuItem
        Caption = 'Texto'
      end
      object Imagem1: TMenuItem
        Caption = 'Imagem'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
