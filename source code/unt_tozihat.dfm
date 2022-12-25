object frm_tozihat: Tfrm_tozihat
  Left = 253
  Top = 209
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1575#1585#1583#1705#1585#1583#1606' '#1578#1608#1590#1610#1581#1575#1578
  ClientHeight = 211
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 295
    Top = 10
    Width = 50
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1578#1608#1590#1610#1581#1575#1578'  :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_type_tozih: TLabel
    Left = 48
    Top = 8
    Width = 56
    Height = 13
    Caption = 'l_type_tozih'
    Visible = False
  end
  object l_type_factor: TLabel
    Left = 136
    Top = 8
    Width = 56
    Height = 13
    Caption = 'l_type_tozih'
    Visible = False
  end
  object Memo1: TMemo
    Left = 2
    Top = 32
    Width = 345
    Height = 141
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    MaxLength = 300
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 2
    Top = 182
    Width = 51
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 57
    Top = 182
    Width = 51
    Height = 25
    Caption = #1662#1575#1705' '#1705#1585#1583#1606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
