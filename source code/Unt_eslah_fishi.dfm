object frm_eslah_fishi: Tfrm_eslah_fishi
  Left = 580
  Top = 306
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581' '#1578#1593#1583#1575#1583' '#1580#1606#1587
  ClientHeight = 178
  ClientWidth = 214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object L_jozi: TLabel
    Left = 122
    Top = 78
    Width = 66
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_koli: TLabel
    Left = 122
    Top = 12
    Width = 59
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 122
    Top = 112
    Width = 63
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_id: TLabel
    Left = 0
    Top = 32
    Width = 16
    Height = 13
    Caption = 'l_id'
    Visible = False
  end
  object l_jozi_dar_koli: TLabel
    Left = 0
    Top = 88
    Width = 16
    Height = 13
    Caption = 'l_id'
    Visible = False
  end
  object L_jozi_dar_koli3: TLabel
    Left = 122
    Top = 34
    Width = 61
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_jozi_dar_koli2: TLabel
    Left = 122
    Top = 52
    Width = 44
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = #1583#1585' '#1705#1604#1610':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_jozi_dar_koli1: TLabel
    Left = 32
    Top = 48
    Width = 77
    Height = 16
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object e_tedad_jozi: TEdit
    Left = 34
    Top = 74
    Width = 80
    Height = 24
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnKeyPress = e_tedad_joziKeyPress
  end
  object e_tedad_koli: TEdit
    Left = 34
    Top = 9
    Width = 80
    Height = 24
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = e_tedad_koliKeyPress
  end
  object e_geymat: TEdit
    Left = 34
    Top = 108
    Width = 80
    Height = 24
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnKeyPress = e_geymatKeyPress
  end
  object suiButton6: TsuiButton
    Left = 55
    Top = 146
    Width = 104
    Height = 25
    ParentColor = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1578#1575#1610#1610#1583
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton6Click
    ResHandle = 0
  end
end
