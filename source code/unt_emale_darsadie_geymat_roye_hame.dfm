object frm_emale_darsadie_geymat_roye_hame: Tfrm_emale_darsadie_geymat_roye_hame
  Left = 387
  Top = 215
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1583#1585#1589#1583' '#1575#1601#1586#1575#1610#1588'/'#1705#1575#1607#1588' '#1602#1610#1605#1578' '#1585#1608#1610' '#1607#1605#1607' '#1575#1580#1606#1575#1587
  ClientHeight = 250
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    354
    250)
  PixelsPerInch = 96
  TextHeight = 13
  object L_sherkat: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'L_sherkat'
    Visible = False
  end
  object L_type: TLabel
    Left = 96
    Top = 8
    Width = 71
    Height = 13
    Caption = 'L_cod_sherkat'
    Visible = False
  end
  object Label5: TLabel
    Left = 14
    Top = 109
    Width = 326
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1585#1575#1610' '#1602#1610#1605#1578' '#1580#1606#1587' ('#1578#1608#1590#1610#1581#1575#1578' '#1576#1589#1608#1585#1578' '#1575#1578#1608#1605#1575#1578#1610#1705' '#1584#1582#1610#1585#1607' '#1605#1610' '#1711#1585#1583#1606#1583'):'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object G_darsad: TGroupBox
    Left = 11
    Top = 6
    Width = 332
    Height = 94
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1601#1586#1575#1610#1588'/'#1705#1575#1607#1588' '#1602#1610#1605#1578' '#1576#1607' '#1589#1608#1585#1578' '#1583#1585#1589#1583#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label8: TLabel
      Left = 163
      Top = 33
      Width = 127
      Height = 13
      Caption = #1583#1585#1589#1583' '#1575#1601#1586#1575#1610#1588'/'#1705#1575#1607#1588' '#1602#1610#1605#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object E_darsad_sod: TEdit
      Left = 31
      Top = 28
      Width = 113
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      OnChange = E_darsad_sodChange
    end
    object RadioGroup1: TRadioGroup
      Left = 84
      Top = 54
      Width = 152
      Height = 35
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1601#1586#1575#1610#1588
        #1705#1575#1607#1588)
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  object pmolaforforosh: TPDJXPMemo
    Left = 16
    Top = 134
    Width = 321
    Height = 78
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 60
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object suiBno: TsuiButton
    Left = 64
    Top = 221
    Width = 45
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1582#1585#1608#1580
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
    OnClick = suiBnoClick
    ResHandle = 0
  end
  object suiBok: TsuiButton
    Left = 16
    Top = 221
    Width = 45
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1584#1582#1610#1585#1607
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 2
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiBokClick
    ResHandle = 0
  end
end
