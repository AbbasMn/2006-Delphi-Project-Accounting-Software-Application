object frm_variz_be_sarmaye: Tfrm_variz_be_sarmaye
  Left = 529
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1575#1585#1610#1586' '#1608#1580#1607' '#1576#1607' '#1589#1606#1583#1608#1602' '#1587#1585#1605#1575#1610#1607
  ClientHeight = 287
  ClientWidth = 288
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
  object Label3: TLabel
    Left = 52
    Top = 12
    Width = 185
    Height = 27
    Caption = #1608#1575#1585#1610#1586' '#1608#1580#1607' '#1606#1602#1583' '#1576#1607' '#1589#1606#1583#1608#1602' '#1587#1585#1605#1575#1610#1607
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 200
    Top = 53
    Width = 66
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1605#1576#1604#1594' '#1608#1575#1585#1610#1586#1610'   :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 205
    Top = 156
    Width = 72
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1588#1585#1581'               :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object e_mablag: TEdit
    Left = 32
    Top = 48
    Width = 143
    Height = 22
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 9
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = e_mablagKeyPress
  end
  object suiButton1: TsuiButton
    Left = 6
    Top = 262
    Width = 78
    Height = 22
    Font.Charset = DEFAULT_CHARSET
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
    OnClick = suiButton1Click
    ResHandle = 0
  end
  object GroupBox5: TGroupBox
    Left = 6
    Top = 84
    Width = 277
    Height = 51
    BiDiMode = bdRightToLeft
    Caption = '  * '#1578#1575#1585#1610#1582'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object RadioGroup11: TRadioGroup
      Left = 139
      Top = 13
      Width = 126
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1605#1585#1608#1586
        #1594#1610#1585#1607)
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup11Click
    end
    object E_tarikh: TEdit
      Left = 13
      Top = 20
      Width = 121
      Height = 22
      TabStop = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Memo1: TMemo
    Left = 6
    Top = 156
    Width = 185
    Height = 101
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 100
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
  end
end
