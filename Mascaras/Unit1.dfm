object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit11: TMaskEdit1
    Left = 152
    Top = 104
    Width = 120
    Height = 21
    EditMask = '999.999.999-99;1;_'
    MaxLength = 14
    TabOrder = 0
    Text = '   .   .   -  '
    Pessoa = pFisica
  end
  object RadioGroup1: TRadioGroup
    Left = 120
    Top = 28
    Width = 185
    Height = 61
    Caption = 'CNPJ/CPF'
    Columns = 2
    Items.Strings = (
      'Juridico '
      'F'#237'sico')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
end
